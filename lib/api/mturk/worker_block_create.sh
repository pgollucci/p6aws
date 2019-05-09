p6_aws_mturk_worker_block_create() {
    local worker_id="$1"
    local reason="$2"
    shift 2

    p6_run_write_cmd aws mturk create-worker-block --worker-id $worker_id --reason $reason "$@"
}
