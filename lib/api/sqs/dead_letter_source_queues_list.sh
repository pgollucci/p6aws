p6_aws_sqs_dead_letter_source_queues_list() {
    local queue_url="$1"
    shift 1

    p6_run_read_cmd aws sqs list-dead-letter-source-queues --queue-url $queue_url "$@"
}
