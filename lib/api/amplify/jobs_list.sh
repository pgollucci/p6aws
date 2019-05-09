p6_aws_amplify_jobs_list() {
    local app_id="$1"
    local branch_name="$2"
    shift 2

    p6_run_read_cmd aws amplify list-jobs --app-id $app_id --branch-name $branch_name "$@"
}
