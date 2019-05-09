p6_aws_sqs_message_receive() {
    local queue_url="$1"
    shift 1

    p6_log_or_run aws sqs receive-message --queue-url $queue_url "$@"
}
