######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_notification_configuration_delete(auto_scaling_group_name, topic_arn)
#
# Arg(s):
#    auto_scaling_group_name - 
#    topic_arn - 
#
#
#>
######################################################################
p6_aws_autoscaling_notification_configuration_delete() {
    local auto_scaling_group_name="$1"
    local topic_arn="$2"
    shift 2

    p6_run_write_cmd aws autoscaling delete-notification-configuration --auto-scaling-group-name $auto_scaling_group_name --topic-arn $topic_arn "$@"
}