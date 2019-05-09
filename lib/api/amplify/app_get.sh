p6_aws_amplify_app_get() {
    local app_id="$1"
    shift 1

    p6_run_read_cmd aws amplify get-app --app-id $app_id "$@"
}
