p6_aws_sms_replication_runs_get() {
    local replication_job_id="$1"
    shift 1

    p6_log_and_run aws sms get-replication-runs --replication-job-id $replication_job_id "$@"
}
