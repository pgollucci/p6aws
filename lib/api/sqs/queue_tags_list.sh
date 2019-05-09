p6_aws_sqs_queue_tags_list() {
    local queue_url="$1"
    shift 1

    p6_log_and_run aws sqs list-queue-tags --queue-url $queue_url "$@"
}
