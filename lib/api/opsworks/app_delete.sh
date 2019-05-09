p6_aws_opsworks_app_delete() {
    local app_id="$1"
    shift 1

    p6_log_or_run aws opsworks delete-app --app-id $app_id "$@"
}
