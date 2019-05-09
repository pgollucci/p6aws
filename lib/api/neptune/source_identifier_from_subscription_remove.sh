p6_aws_neptune_source_identifier_from_subscription_remove() {
    local subscription_name="$1"
    local source_identifier="$2"
    shift 2

    p6_log_or_run aws neptune remove-source-identifier-from-subscription --subscription-name $subscription_name --source-identifier $source_identifier "$@"
}
