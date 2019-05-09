p6_aws_sqs_message_batch_delete() {
    local queue_url="$1"
    local entries="$2"
    shift 2

    p6_log_or_run aws sqs delete-message-batch --queue-url $queue_url --entries $entries "$@"
}
