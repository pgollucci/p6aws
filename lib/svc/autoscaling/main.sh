p6_aws_autoscaling_svc_asg_create() {
    local asg_name="$1"
    local min_size="$2"
    local max_size="$3"
    local desired_capacity="$4"
    local lt_id="$5"
    local lt_name="$6"
    local lt_version="$7"
    local subnet_type="$8"
    local vpc_id="${9:-$AWS_VPC}"

    local subnet_ids=$(p6_aws_ec2_svc_subnet_ids_get "$subnet_type" "$vpc_id" | xargs | sed -e 's/ /,/g')

    p6_aws_autoscaling_auto_scaling_group_create \
	"$asg_name" "$min_size" "$max_size" \
	--desired-capacity $desired_capacity  \
	--launch-template LaunchTemplateId=$lt_id \
	--vpc-zone-identifier $subnet_ids

    # ResourceId=string,ResourceType=string,Key=string,Value=string,PropagateAtLaunch=boolean ...}
}

# XXX: See elbv2 target-groups and rules
p6_aws_autoscaling_svc_asg_target_group_arn() {
    local asg_name="$1"
    local target_group_arn="$2"

    p6_aws_autoscaling_auto_scaling_group_update \
	"$asg_name" \
	--target-group-arns $target_group_arn
}

p6_aws_autoscaling_svc_asgs_list() {

    p6_aws_autoscaling_auto_scaling_groups_describe \
	--output text \
	--query "'AutoScalingGroups[].[AutoScalingGroupName, LaunchTemplate.LaunchTemplateName, MinSize, MaxSize, DesiredCapacity, VPCZoneIdentifier, join(\`,\`, AvailabilityZones[]), TargetGroupArns, $P6_AWS_JQ_TAG_NAME]'"
}

# [LoadBalancerNames[0]

p6_aws_autoscaling_svc_asgs_act_list() {
    local asg_name="$1"

    p6_aws_autoscaling_scaling_activities_describe \
	--output text \
	--auto-scaling-group-name "$asg_name" \
	--query "Activities[].[StatusCode, Description, Details]"
}

## DEPRECATED -- see Launch Templates
p6_old_aws_autoscaling_svc_asg_load_balancer_names() {
    local asg_name="$1"
    local load_balancer_names="$2"

    p6_aws_autoscaling_auto_scaling_group_update \
	"$asg_name" \
	--load-balancer-names $load_balancer_names
}

p6_old_aws_autoscaling_svc_lcs_list() {

    p6_aws_autoscaling_launch_configurations_describe \
	--output text \
	--query "'LaunchConfigurations[].[LaunchConfigurationName, ImageId, InstanceType, SecurityGroups[].GroupId | join(\`,\` @), KeyName]'"
}

p6_old_aws_autoscaling_svc_lc_user_data_show() {
    local lc_name="$1"

    p6_aws_autoscaling_launch_configurations_describe \
	--output text \
	--launch-configuration-names $lc_name \
	--query "'LaunchConfigurations[].[UserData]'"
}
