p6_aws_amplify_job_start() {
    local app_id="$1"
    local branch_name="$2"
    local job_type="$3"
    shift 3

    p6_run_write_cmd aws amplify start-job --app-id $app_id --branch-name $branch_name --job-type $job_type "$@"
}
