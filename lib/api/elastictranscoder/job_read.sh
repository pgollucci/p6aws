p6_aws_elastictranscoder_job_read() {
    local id="$1"
    shift 1

    p6_log_or_run aws elastictranscoder read-job --id $id "$@"
}
