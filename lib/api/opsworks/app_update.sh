p6_aws_opsworks_app_update() {
    local app_id="$1"
    shift 1

    p6_log_or_run aws opsworks update-app --app-id $app_id "$@"
}
