p6_aws_servicecatalog_product_update() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog update-product --id $id "$@"
}
