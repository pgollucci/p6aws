p6_aws_amplify_app_delete() {
    local app_id="$1"
    shift 1

    p6_run_write_cmd aws amplify delete-app --app-id $app_id "$@"
}
