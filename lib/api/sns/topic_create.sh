p6_aws_sns_topic_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws sns create-topic --name $name "$@"
}
