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
	       --desired-capacity $desired_capacity  \
	       --launch-template LaunchTemplateId=$lt_id \
	       --vpc-zone-identifier $subnet_ids

    # ResourceId=string,ResourceType=string,Key=string,Value=string,PropagateAtLaunch=boolean ...}
}

# XXX: See elbv2 target-groups and rules
######################################################################
#<
#
# Function: p6_aws_svc_autoscaling_asg_target_group_arn(asg_name, target_group_arn)
#
#  Args:
#	asg_name -
#	target_group_arn -
#
#>
######################################################################
p6_aws_svc_autoscaling_asg_target_group_arn() {
    local asg_name="$1"
    local target_group_arn="$2"

    p6_aws_cli_cmd autoscaling update-autoscaling-group \
	       "$asg_name" \
	       --target-group-arns $target_group_arn
}

######################################################################
#<
#
# Function: p6_aws_svc_autoscaling_asgs_list()
#
#>
######################################################################
p6_aws_svc_autoscaling_asgs_list() {

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd autoscaling describe-auto-scaling-groups \
	       --output text \
	       --query "'AutoScalingGroups[].[AutoScalingGroupName, LaunchTemplate.LaunchTemplateName, MinSize, MaxSize, DesiredCapacity, VPCZoneIdentifier, join(\`,\`, AvailabilityZones[]), TargetGroupArns, $tag_name]'"
}

# [LoadBalancerNames[0]

######################################################################
#<
#
# Function: p6_aws_svc_autoscaling_asg_act_list(asg_name)
#
#  Args:
#	asg_name -
#
#>
######################################################################
p6_aws_svc_autoscaling_asg_act_list() {
    local asg_name="$1"

    p6_aws_cli_cmd autoscaling describe-scaling-activities \
	       --output text \
	       --auto-scaling-group-name "$asg_name" \
	       --query "'Activities[].[StartTime, EndTime, StatusCode, Description, Details]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_autoscaling_asg_act_deltailed_list(asg_name)
#
#  Args:
#	asg_name -
#
#>
######################################################################
p6_aws_svc_autoscaling_asg_act_deltailed_list() {
    local asg_name="$1"

    p6_aws_cli_cmd autoscaling describe-scaling-activities \
	       --output text \
	       --auto-scaling-group-name "$asg_name" \
	       --query "'Activities[].[StartTime, EndTime, StatusCode, Description, Details, Cause]'"
}