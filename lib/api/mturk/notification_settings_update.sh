p6_aws_mturk_notification_settings_update() {
    local hit_type_id="$1"
    shift 1

    p6_run_write_cmd aws mturk update-notification-settings --hit-type-id $hit_type_id "$@"
}
