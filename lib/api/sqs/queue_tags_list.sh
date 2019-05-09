p6_aws_sqs_queue_tags_list() {
    local queue_url="$1"
    shift 1

    p6_run_read_cmd aws sqs list-queue-tags --queue-url $queue_url "$@"
}
