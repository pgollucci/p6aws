p6_aws_sns_subscription_confirm() {
    local topic_arn="$1"
    local token="$2"
    shift 2

    p6_log_or_run aws sns confirm-subscription --topic-arn $topic_arn --token $token "$@"
}
