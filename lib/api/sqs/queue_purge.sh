p6_aws_sqs_queue_purge() {
    local queue_url="$1"
    shift 1

    p6_log_or_run aws sqs purge-queue --queue-url $queue_url "$@"
}
