p6_aws_fms_notification_channel_put() {
    local sns_topic_arn="$1"
    local sns_role_name="$2"
    shift 2

    p6_log_or_run aws fms put-notification-channel --sns-topic-arn $sns_topic_arn --sns-role-name $sns_role_name "$@"
}
