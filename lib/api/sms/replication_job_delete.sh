p6_aws_sms_replication_job_delete() {
    local replication_job_id="$1"
    shift 1

    p6_log_or_run aws sms delete-replication-job --replication-job-id $replication_job_id "$@"
}
