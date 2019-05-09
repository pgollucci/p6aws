p6_aws_servicecatalog_product_with_portfolio_associate() {
    local product_id="$1"
    local portfolio_id="$2"
    shift 2

    p6_log_or_run aws servicecatalog associate-product-with-portfolio --product-id $product_id --portfolio-id $portfolio_id "$@"
}
