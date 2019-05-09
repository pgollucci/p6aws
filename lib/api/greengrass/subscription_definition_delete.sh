p6_aws_greengrass_subscription_definition_delete() {
    local subscription_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass delete-subscription-definition --subscription-definition-id $subscription_definition_id "$@"
}
