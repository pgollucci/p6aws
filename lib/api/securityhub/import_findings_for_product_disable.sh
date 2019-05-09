p6_aws_securityhub_import_findings_for_product_disable() {
    local product_subscription_arn="$1"
    shift 1

    p6_log_or_run aws securityhub disable-import-findings-for-product --product-subscription-arn $product_subscription_arn "$@"
}
