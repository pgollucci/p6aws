p6_aws_redshift_event_subscription_create() {
    local subscription_name="$1"
    local sns_topic_arn="$2"
    shift 2

    p6_run_write_cmd aws redshift create-event-subscription --subscription-name $subscription_name --sns-topic-arn $sns_topic_arn "$@"
}
