p6_aws_mediaconvert_job_cancel() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediaconvert cancel-job --id $id "$@"
}
