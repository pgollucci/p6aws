p6_aws_elastictranscoder_job_cancel() {
    local id="$1"
    shift 1

    p6_log_or_run aws elastictranscoder cancel-job --id $id "$@"
}
