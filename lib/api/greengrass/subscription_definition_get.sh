p6_aws_greengrass_subscription_definition_get() {
    local subscription_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass get-subscription-definition --subscription-definition-id $subscription_definition_id "$@"
}
