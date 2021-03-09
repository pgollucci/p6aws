######################################################################
#<
#
# Function: p6_aws_svc_ec2_instance_show(instance_id)
#
#  Args:
#	instance_id -
#
#>
######################################################################
p6_aws_svc_ec2_instance_show() {
    local instance_id="$1"

    p6_aws_cmd ec2 describe-instances --instance-ids "$instance_id"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_instances_list([vpc_id=$AWS_VPC_ID])
#
#  Args:
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_svc_ec2_instances_list() {
    local vpc_id="${1:-$AWS_VPC_ID}"

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cmd ec2 describe-instances \
        --output text \
        --filters "Name=vpc-id,Values=$vpc_id" \
        --query "'Reservations[].Instances[].[InstanceId, ImageId, InstanceType, SecurityGroups[].GroupId | join(\`,\` @), SubnetId, Placement.AvailabilityZone, BlockDeviceMappings[0].Ebs.VolumeId, NetworkInterfaces[0].PrivateIpAddress, KeyName, $tag_name, KmsKeyId, NetworkInterfaces[0].Association.PublicIp, IamInstanceProfile.Arn]'"

}

######################################################################
#<
#
# Function: str instance_id = p6_aws_svc_ec2_instance_id_from_name_tag(name)
#
#  Args:
#	name -
#
#  Returns:
#	str - instance_id
#
#>
######################################################################
p6_aws_svc_ec2_instance_id_from_name_tag() {
    local name="$1"

    local instance_id
    instance_id=$(p6_aws_cmd ec2 describe-instances \
        --output text \
        --filters "\"Name=tag:Name,Values=*$name*\"" \
        --query "'Reservations[].Instances[].[LaunchTime,InstanceId]'" |
        sort -n |
        awk '{ print $2 }' |
        tail -1)

    p6_return_str "$instance_id"
}

######################################################################
#<
#
# Function: str private_ip = p6_aws_svc_ec2_instance_private_ip(instance_id)
#
#  Args:
#	instance_id -
#
#  Returns:
#	str - private_ip
#
#>
######################################################################
p6_aws_svc_ec2_instance_private_ip() {
    local instance_id="$1"

    local private_ip
    private_ip=$(p6_aws_cmd ec2 describe-instances \
        --output text \
        --instance-ids "$instance_id" \
        --query "'Reservations[0].Instances[0].PrivateIpAddress'")

    p6_return_str "$private_ip"
}

######################################################################
#<
#
# Function: str public_ip = p6_aws_svc_ec2_instance_public_ip(instance_id)
#
#  Args:
#	instance_id -
#
#  Returns:
#	str - public_ip
#
#>
######################################################################
p6_aws_svc_ec2_instance_public_ip() {
    local instance_id="$1"

    local public_ip
    public_ip=$(p6_aws_cmd ec2 describe-instances \
        --output text \
        --instance-ids "$instance_id" \
        --query "'Reservations[0].Instances[0].PublicIpAddress'")

    p6_return_str "$public_ip"
}