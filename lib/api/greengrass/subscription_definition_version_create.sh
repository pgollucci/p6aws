p6_aws_greengrass_subscription_definition_version_create() {
    local subscription_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-subscription-definition-version --subscription-definition-id $subscription_definition_id "$@"
}
