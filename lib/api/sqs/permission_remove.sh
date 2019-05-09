p6_aws_sqs_permission_remove() {
    local queue_url="$1"
    local label="$2"
    shift 2

    p6_log_or_run aws sqs remove-permission --queue-url $queue_url --label $label "$@"
}
