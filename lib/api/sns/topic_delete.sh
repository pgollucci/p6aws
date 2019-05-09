p6_aws_sns_topic_delete() {
    local topic_arn="$1"
    shift 1

    p6_log_or_run aws sns delete-topic --topic-arn $topic_arn "$@"
}
