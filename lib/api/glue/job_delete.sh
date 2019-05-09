p6_aws_glue_job_delete() {
    local job_name="$1"
    shift 1

    p6_log_or_run aws glue delete-job --job-name $job_name "$@"
}
