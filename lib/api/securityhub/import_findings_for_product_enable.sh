p6_aws_securityhub_import_findings_for_product_enable() {
    local product_arn="$1"
    shift 1

    p6_log_or_run aws securityhub enable-import-findings-for-product --product-arn $product_arn "$@"
}
