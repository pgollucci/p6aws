p6_aws_sqs_queue_purge() {
    local queue_url="$1"
    shift 1

    p6_run_write_cmd aws sqs purge-queue --queue-url $queue_url "$@"
}
