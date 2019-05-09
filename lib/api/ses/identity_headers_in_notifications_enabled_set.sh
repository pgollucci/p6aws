p6_aws_ses_identity_headers_in_notifications_enabled_set() {
    local identity="$1"
    local notification_type="$2"
    local enabled="$3"
    shift 3

    p6_log_or_run aws ses set-identity-headers-in-notifications-enabled --identity $identity --notification-type $notification_type --enabled $enabled "$@"
}
