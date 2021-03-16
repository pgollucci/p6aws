######################################################################
#<
#
# Function: p6_aws_svc_autoscaling_asg_create(asg_name, min_size, max_size, desired_capacity, lt_id, lt_name, lt_version, subnet_type, [vpc_id=$AWS_VPC])
#
#  Args:
#	asg_name -
#	min_size -
#	max_size -
#	desired_capacity -
#	lt_id -
#	lt_name -
#	lt_version -
#	subnet_type -
#	OPTIONAL vpc_id - [$AWS_VPC]
#
#>
######################################################################
p6_aws_svc_autoscaling_asg_create() {
    local asg_name="$1"
    local min_size="$2"
    local max_size="$3"
    local desired_capacity="$4"
    local lt_id="$5"
    local lt_name="$6"
    local lt_version="$7"
    local subnet_type="$8"
    local vpc_id="${9:-$AWS_VPC}"

    local subnet_ids=$(p6_aws_svc_ec2_subnet_ids_get "$subnet_type" "$vpc_id" | xargs | sed -e 's/ /,/g')

    p6_aws_cli_cmd autoscaling create-auto-scaling-group \
        "$asg_name" "$min_size" "$max_size" \
        --desired-capacity $desired_capacity \
        --launch-template LaunchTemplateId=$lt_id \
        --vpc-zone-identifier $subnet_ids

    # ResourceId=string,ResourceType=string,Key=string,Value=string,PropagateAtLaunch=boolean ...}
}
