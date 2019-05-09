p6_aws_sqs_queue_attributes_set() {
    local queue_url="$1"
    local attributes="$2"
    shift 2

    p6_log_or_run aws sqs set-queue-attributes --queue-url $queue_url --attributes $attributes "$@"
}
