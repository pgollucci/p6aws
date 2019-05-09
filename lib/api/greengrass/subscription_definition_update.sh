p6_aws_greengrass_subscription_definition_update() {
    local subscription_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass update-subscription-definition --subscription-definition-id $subscription_definition_id "$@"
}
