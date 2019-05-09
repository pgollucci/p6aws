p6_aws_sqs_message_batch_send() {
    local queue_url="$1"
    local entries="$2"
    shift 2

    p6_run_write_cmd aws sqs send-message-batch --queue-url $queue_url --entries $entries "$@"
}
