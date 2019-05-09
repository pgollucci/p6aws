p6_aws_servicecatalog_product_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog describe-product --id $id "$@"
}
