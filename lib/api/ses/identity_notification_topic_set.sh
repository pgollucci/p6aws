p6_aws_ses_identity_notification_topic_set() {
    local identity="$1"
    local notification_type="$2"
    shift 2

    p6_log_or_run aws ses set-identity-notification-topic --identity $identity --notification-type $notification_type "$@"
}
