p6_aws_signer_signing_job_describe() {
    local job_id="$1"
    shift 1

    p6_log_and_run aws signer describe-signing-job --job-id $job_id "$@"
}
