p6_aws_servicecatalog_copy_product_status_describe() {
    local copy_product_token="$1"
    shift 1

    p6_log_and_run aws servicecatalog describe-copy-product-status --copy-product-token $copy_product_token "$@"
}
