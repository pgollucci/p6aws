p6_aws_amplify_webhooks_list() {
    local app_id="$1"
    shift 1

    p6_run_read_cmd aws amplify list-webhooks --app-id $app_id "$@"
}
