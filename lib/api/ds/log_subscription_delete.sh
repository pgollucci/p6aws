p6_aws_ds_log_subscription_delete() {
    local directory_id="$1"
    shift 1

    p6_run_write_cmd aws ds delete-log-subscription --directory-id $directory_id "$@"
}
