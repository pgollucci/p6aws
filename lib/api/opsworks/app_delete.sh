p6_aws_opsworks_app_delete() {
    local app_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks delete-app --app-id $app_id "$@"
}
