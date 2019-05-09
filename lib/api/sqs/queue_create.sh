p6_aws_sqs_queue_create() {
    local queue_name="$1"
    shift 1

    p6_log_or_run aws sqs create-queue --queue-name $queue_name "$@"
}
