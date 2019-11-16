######################################################################
#<
#
# Function: p6_aws_ec2_svc_instance_show(instance_id)
#
#  Args:
#	instance_id - 
#
#>
######################################################################
p6_aws_ec2_svc_instance_show() {
    local instance_id="$1"

    p6_aws_cmd ec2 describe-instances --instance-ids $instance_id
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_instances_list([vpc_id=$AWS_VPC_ID])
#
#  Args:
#	OPTIONAL vpc_id -  [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_ec2_svc_instances_list() {
    local vpc_id="${1:-$AWS_VPC_ID}"

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cmd ec2 describe-instances \
	       --output text \
	       --filters "Name=vpc-id,Values=$vpc_id" \
	       --query "'Reservations[].Instances[].[InstanceId, ImageId, InstanceType, SecurityGroups[].GroupId | join(\`,\` @), SubnetId, Placement.AvailabilityZone, BlockDeviceMappings[0].Ebs.VolumeId, NetworkInterfaces[0].PrivateIpAddress, KeyName, $tag_name, KmsKeyId, NetworkInterfaces[0].Association.PublicIp, IamInstanceProfile.Arn]'"

}

######################################################################
#<
#
# Function: str instance_id = p6_aws_ec2_svc_instance_id_from_name_tag(name)
#
#  Args:
#	name - 
#
#  Returns:
#	str - instance_id
#
#>
######################################################################
p6_aws_ec2_svc_instance_id_from_name_tag() {
    local name="$1"

    local instance_id=$(p6_aws_cmd ec2 describe-instances \
				   --output text \
				   --filters "\"Name=tag:Name,Values=*$name*\"" \
				   --query "'Reservations[].Instances[].[LaunchTime,InstanceId]'" | \
			    sort -n | \
			    awk '{ print $2 }' | \
			    tail -1)

    p6_return_str "$instance_id"
}

######################################################################
#<
#
# Function: str private_ip = p6_aws_ec2_svc_instance_private_ip(instance_id)
#
#  Args:
#	instance_id - 
#
#  Returns:
#	str - private_ip
#
#>
######################################################################
p6_aws_ec2_svc_instance_private_ip() {
    local instance_id="$1"

    local private_ip=$(p6_aws_cmd ec2 describe-instances \
				  --output text \
				  --instance-ids $instance_id \
				  --query "'Reservations[0].Instances[0].PrivateIpAddress'")

    p6_return_str "$private_ip"
}

######################################################################
#<
#
# Function: str public_ip = p6_aws_ec2_svc_instance_public_ip(instance_id)
#
#  Args:
#	instance_id - 
#
#  Returns:
#	str - public_ip
#
#>
######################################################################
p6_aws_ec2_svc_instance_public_ip() {
    local instance_id="$1"

    local public_ip=$(p6_aws_cmd ec2 describe-instances \
				 --output text \
				 --instance-ids $instance_id \
				 --query "'Reservations[0].Instances[0].PublicIpAddress'")

    p6_return_str "$public_ip"
}

######################################################################
#<
#
# Function: str instance_id = p6_aws_ec2_svc_instance_create(name, ami_id, [instance_type=t3a.nano], sg_ids, subnet_id, key_name, [user_data=])
#
#  Args:
#	name - 
#	ami_id - 
#	OPTIONAL instance_type -  [t3a.nano]
#	sg_ids - 
#	subnet_id - 
#	key_name - 
#	OPTIONAL user_data -  []
#
#  Returns:
#	str - instance_id
#
#>
######################################################################
p6_aws_ec2_svc_instance_create() {
    local name="$1"
    local ami_id="$2"
    local instance_type="${3:-t3a.nano}"
    local sg_ids="$4"
    local subnet_id="$5"
    local key_name="$6"
    local user_data="${7:-}"

    [ -n "$user_data" ] && user_data="--user-data=$user_data"

    local instance_id=$(
	p6_aws_cmd ec2 run-instances \
	    --output json \
	    --key-name $key_name \
	    --image-id $ami_id \
	    --instance-type $instance_type \
	    --security-group-ids $sg_ids \
	    --subnet-id $subnet_id \
	    $user_data
	  )

    p6_aws_cmd ec2 create-tags "$instance_id" "'Key=Name,Value=$name'"

    p6_return_str "$instance_id"
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_launch_template_create(lt_name, ami_id, [instance_type=t3a.nano], sg_ids, key_name)
#
#  Args:
#	lt_name - 
#	ami_id - 
#	OPTIONAL instance_type -  [t3a.nano]
#	sg_ids - 
#	key_name - 
#
#>
######################################################################
p6_aws_ec2_svc_launch_template_create() {
    local lt_name="$1"
    local ami_id="$2"
    local instance_type="${3:-t3a.nano}"
    local sg_ids="$4"
    local key_name="$5"
#    local user_data="${7:-}"

    [ -n "$user_data" ] && user_data="--user-data=$user_data"

    local launch_template_data=$(p6_aws_template_process "ec2/launch_configuration.json" \
								     "ASSOCIATE_PUBLIC_IP_ADDRESS=true" \
								     "SECURITY_GROUPS=$sg_ids" \
								     "DELETE_ON_TERMINATE=true" \
								     "IMAGE_ID=$ami_id" \
								     "INSTANCE_TYPE=$instance_type" \
								     "TAG_NAME=$lt_name" \
								     "KEY_NAME=$key_name"
	  )

    p6_aws_cmd ec2 create-launch-template "$lt_name" "'$launch_template_data'" --version-description "initial"
    #    p6_aws_cmd ec2 create-tags  "$launch_template_id" "'Key=Name,Value=$name'"

}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_launch_templates_list()
#
#>
######################################################################
p6_aws_ec2_svc_launch_templates_list() {

    p6_aws_cmd ec2 describe-launch-templates \
	       --output text \
	       --query "'LaunchTemplates[].[LaunchTemplateId, LaunchTemplateName, DefaultVersionNumber, LatestVersionNumber]'"
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_volumes_list()
#
#>
######################################################################
p6_aws_ec2_svc_volumes_list() {

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cmd ec2 describe-volumes \
	--output text \
	--query "'Volumes[].[VolumeId, State, Size, AvailabilityZone, KmsKeyId, $tag_name, Attachments[0].InstanceId]'"
}