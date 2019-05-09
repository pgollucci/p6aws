p6_aws_ds_log_subscription_create() {
    local directory_id="$1"
    local log_group_name="$2"
    shift 2

    p6_run_write_cmd aws ds create-log-subscription --directory-id $directory_id --log-group-name $log_group_name "$@"
}
