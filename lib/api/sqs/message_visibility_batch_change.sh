p6_aws_sqs_message_visibility_batch_change() {
    local queue_url="$1"
    local entries="$2"
    shift 2

    p6_log_or_run aws sqs change-message-visibility-batch --queue-url $queue_url --entries $entries "$@"
}
