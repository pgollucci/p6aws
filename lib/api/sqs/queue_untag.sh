p6_aws_sqs_queue_untag() {
    local queue_url="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws sqs untag-queue --queue-url $queue_url --tag-keys $tag_keys "$@"
}
