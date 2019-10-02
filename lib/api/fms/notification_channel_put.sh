######################################################################
#<
#
# Function:
#	p6_aws_fms_notification_channel_put(sns_topic_arn, sns_role_name)
#
#  Args:
#	sns_topic_arn - 
#	sns_role_name - 
#
#>
######################################################################
p6_aws_fms_notification_channel_put() {
    local sns_topic_arn="$1"
    local sns_role_name="$2"
    shift 2

    p6_run_write_cmd aws fms put-notification-channel --sns-topic-arn $sns_topic_arn --sns-role-name $sns_role_name "$@"
}