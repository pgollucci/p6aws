p6_aws_sqs_queue_tag() {
    local queue_url="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws sqs tag-queue --queue-url $queue_url --tags $tags "$@"
}
