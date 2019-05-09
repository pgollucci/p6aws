p6_aws_mturk_worker_block_create() {
    local worker_id="$1"
    local reason="$2"
    shift 2

    p6_log_or_run aws mturk create-worker-block --worker-id $worker_id --reason $reason "$@"
}
