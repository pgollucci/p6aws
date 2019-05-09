p6_aws_mediaconvert_job_template_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws mediaconvert delete-job-template --name $name "$@"
}
