p6_aws_sqs_message_send() {
    local queue_url="$1"
    local message_body="$2"
    shift 2

    p6_run_write_cmd aws sqs send-message --queue-url $queue_url --message-body $message_body "$@"
}
