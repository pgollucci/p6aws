p6_aws_logs_svc_watch() {
    local log_group_name="$1"

    aws logs get $log_group_name ALL --watch
}
