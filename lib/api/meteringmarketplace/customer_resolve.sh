p6_aws_meteringmarketplace_customer_resolve() {
    local registration_token="$1"
    shift 1

    p6_log_or_run aws meteringmarketplace resolve-customer --registration-token $registration_token "$@"
}
