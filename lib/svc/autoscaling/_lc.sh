## DEPRECATED -- see Launch Templates
######################################################################
#<
#
# Function: p6_old_aws_svc_autoscaling_asg_load_balancer_names(asg_name, load_balancer_names)
#
#  Args:
#	asg_name -
#	load_balancer_names -
#
#>
######################################################################
p6_old_aws_svc_autoscaling_asg_load_balancer_names() {
    local asg_name="$1"
    local load_balancer_names="$2"

    p6_aws_cmd autoscaling update-scaling-group \
	       "$asg_name" \
	       --load-balancer-names $load_balancer_names
}

######################################################################
#<
#
# Function: p6_old_aws_svc_autoscaling_lcs_list()
#
#>
######################################################################
p6_old_aws_svc_autoscaling_lcs_list() {

    p6_aws_cmd autoscaling describe-launch-configurations \
	       --output text \
	       --query "'LaunchConfigurations[].[LaunchConfigurationName, ImageId, InstanceType, SecurityGroups[].GroupId | join(\`,\` @), KeyName]'"
}

######################################################################
#<
#
# Function: p6_old_aws_svc_autoscaling_lc_user_data_show(lc_name)
#
#  Args:
#	lc_name -
#
#>
######################################################################
p6_old_aws_svc_autoscaling_lc_user_data_show() {
    local lc_name="$1"

    p6_aws_cmd autoscaling describe-launch-configurations \
	       --output text \
	       --launch-configuration-names $lc_name \
	       --query "'LaunchConfigurations[].[UserData]'"
}