p6_aws_mediaconvert_job_template_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws mediaconvert delete-job-template --name $name "$@"
}
