p6_aws_sms_replication_job_delete() {
    local replication_job_id="$1"
    shift 1

    p6_run_write_cmd aws sms delete-replication-job --replication-job-id $replication_job_id "$@"
}
