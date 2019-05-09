p6_aws_codepipeline_third_party_job_acknowledge() {
    local job_id="$1"
    local nonce="$2"
    local client_token="$3"
    shift 3

    p6_run_write_cmd aws codepipeline acknowledge-third-party-job --job-id $job_id --nonce $nonce --client-token $client_token "$@"
}
