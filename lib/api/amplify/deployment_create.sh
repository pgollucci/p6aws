p6_aws_amplify_deployment_create() {
    local app_id="$1"
    local branch_name="$2"
    shift 2

    p6_run_write_cmd aws amplify create-deployment --app-id $app_id --branch-name $branch_name "$@"
}
