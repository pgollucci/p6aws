p6_aws_mediaconvert_job_get() {
    local id="$1"
    shift 1

    p6_log_and_run aws mediaconvert get-job --id $id "$@"
}
