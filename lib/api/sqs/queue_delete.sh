p6_aws_sqs_queue_delete() {
    local queue_url="$1"
    shift 1

    p6_log_or_run aws sqs delete-queue --queue-url $queue_url "$@"
}
