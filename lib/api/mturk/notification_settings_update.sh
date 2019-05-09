p6_aws_mturk_notification_settings_update() {
    local hit_type_id="$1"
    shift 1

    p6_log_or_run aws mturk update-notification-settings --hit-type-id $hit_type_id "$@"
}
