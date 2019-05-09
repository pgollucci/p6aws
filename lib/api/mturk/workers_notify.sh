p6_aws_mturk_workers_notify() {
    local subject="$1"
    local message_text="$2"
    local worker_ids="$3"
    shift 3

    p6_log_or_run aws mturk notify-workers --subject $subject --message-text $message_text --worker-ids $worker_ids "$@"
}
