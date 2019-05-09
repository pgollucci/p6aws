p6_aws_sms_replication_job_create() {
    local server_id="$1"
    local seed_replication_time="$2"
    shift 2

    p6_log_or_run aws sms create-replication-job --server-id $server_id --seed-replication-time $seed_replication_time "$@"
}
