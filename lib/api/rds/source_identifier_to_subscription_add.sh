p6_aws_rds_source_identifier_to_subscription_add() {
    local subscription_name="$1"
    local source_identifier="$2"
    shift 2

    p6_log_or_run aws rds add-source-identifier-to-subscription --subscription-name $subscription_name --source-identifier $source_identifier "$@"
}
