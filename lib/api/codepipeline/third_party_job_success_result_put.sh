p6_aws_codepipeline_third_party_job_success_result_put() {
    local job_id="$1"
    local client_token="$2"
    shift 2

    p6_run_write_cmd aws codepipeline put-third-party-job-success-result --job-id $job_id --client-token $client_token "$@"
}
