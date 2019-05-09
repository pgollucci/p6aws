p6_aws_mediaconvert_job_template_update() {
    local name="$1"
    shift 1

    p6_log_or_run aws mediaconvert update-job-template --name $name "$@"
}
