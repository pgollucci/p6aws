p6_aws_marketplace_entitlement_entitlements_get() {
    local product_code="$1"
    shift 1

    p6_run_read_cmd aws marketplace-entitlement get-entitlements --product-code $product_code "$@"
}
