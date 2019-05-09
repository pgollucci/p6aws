p6_aws_mturk_worker_block_delete() {
    local worker_id="$1"
    shift 1

    p6_log_or_run aws mturk delete-worker-block --worker-id $worker_id "$@"
}
