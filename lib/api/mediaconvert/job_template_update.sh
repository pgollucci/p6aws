p6_aws_mediaconvert_job_template_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws mediaconvert update-job-template --name $name "$@"
}
