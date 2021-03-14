######################################################################
#<
#
# Function: p6_aws_svc_ec2_launch_template_create(lt_name, ami_id, [instance_type=t3a.nano], sg_ids, key_name)
#
#  Args:
#	lt_name -
#	ami_id -
#	OPTIONAL instance_type - [t3a.nano]
#	sg_ids -
#	key_name -
#
#>
######################################################################
p6_aws_svc_ec2_launch_template_create() {
	local lt_name="$1"
	local ami_id="$2"
	local instance_type="${3:-t3a.nano}"
	local sg_ids="$4"
	local key_name="$5"

	[ -n "$user_data" ] && user_data="--user-data=$user_data"

	local launch_template_data
	launch_template_data=$(
		p6_aws_template_process "ec2/launch_configuration.json" \
			"ASSOCIATE_PUBLIC_IP_ADDRESS=true" \
			"SECURITY_GROUPS=$sg_ids" \
			"DELETE_ON_TERMINATE=true" \
			"IMAGE_ID=$ami_id" \
			"INSTANCE_TYPE=$instance_type" \
			"TAG_NAME=$lt_name" \
			"KEY_NAME=$key_name"
	)

	p6_aws_cli_cmd ec2 create-launch-template "$lt_name" "'$launch_template_data'" --version-description "initial"
}

######################################################################
#<
#
# Function: str instance_id = p6_aws_svc_ec2_instance_create(name, ami_id, [instance_type=t3a.nano], sg_ids, subnet_id, key_name, [user_data=])
#
#  Args:
#	name -
#	ami_id -
#	OPTIONAL instance_type - [t3a.nano]
#	sg_ids -
#	subnet_id -
#	key_name -
#	OPTIONAL user_data - []
#
#  Returns:
#	str - instance_id
#
#>
######################################################################
p6_aws_svc_ec2_instance_create() {
	local name="$1"
	local ami_id="$2"
	local instance_type="${3:-t3a.nano}"
	local sg_ids="$4"
	local subnet_id="$5"
	local key_name="$6"
	local user_data="${7:-}"

	[ -n "$user_data" ] && user_data="--user-data=$user_data"

	local instance_id
	instance_id=$(
		p6_aws_cli_cmd ec2 run-instances \
			--output json \
			--key-name "$key_name" \
			--image-id "$ami_id" \
			--instance-type "$instance_type" \
			--security-group-ids "$sg_ids" \
			--subnet-id "$subnet_id" \
			"$user_data"
	)

	p6_aws_cli_cmd ec2 create-tags "$instance_id" "'Key=Name,Value=$name'"

	p6_return_str "$instance_id"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_sg_delete(group_name)
#
#  Args:
#	group_name -
#
#>
######################################################################
p6_aws_svc_ec2_sg_delete() {
	local group_name="$1"

	local sg_id
	sg_id=$(p6_aws_svc_ec2_sg_id_from_group_name "$group_name")

	p6_aws_cli_cmd ec2 delete-security-group --group-id "$sg_id"
}

######################################################################
#<
#
# Function: str sg_id = p6_aws_svc_ec2_sg_create(desc, tag_name, [vpc_id=$AWS_VPC])
#
#  Args:
#	desc -
#	tag_name -
#	OPTIONAL vpc_id - [$AWS_VPC]
#
#  Returns:
#	str - sg_id
#
#>
######################################################################
p6_aws_svc_ec2_sg_create() {
	local desc="$1"
	local tag_name="$2"
	local vpc_id=${3:-$AWS_VPC}

	local group_name=$tag_name
	local sg_id
	sg_id=$(p6_aws_cli_cmd ec2 create-security-group "'$desc'" "'$group_name'" --vpc-id "$vpc_id" --output text)

	p6_aws_cli_cmd ec2 create-tags "$sg_id" "'Key=Name,Value=$tag_name'"

	p6_return_str "$sg_id"
}
