p6_aws_mediaconvert_job_template_create() {
    local name="$1"
    local settings="$2"
    shift 2

    p6_run_write_cmd aws mediaconvert create-job-template --name $name --settings $settings "$@"
}
