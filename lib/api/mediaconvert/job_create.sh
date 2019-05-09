p6_aws_mediaconvert_job_create() {
    local role="$1"
    local settings="$2"
    shift 2

    p6_log_or_run aws mediaconvert create-job --role $role --settings $settings "$@"
}
