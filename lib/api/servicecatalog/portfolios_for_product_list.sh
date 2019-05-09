p6_aws_servicecatalog_portfolios_for_product_list() {
    local product_id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog list-portfolios-for-product --product-id $product_id "$@"
}
