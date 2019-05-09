p6_aws_codepipeline_job_success_result_put() {
    local job_id="$1"
    shift 1

    p6_run_write_cmd aws codepipeline put-job-success-result --job-id $job_id "$@"
}
