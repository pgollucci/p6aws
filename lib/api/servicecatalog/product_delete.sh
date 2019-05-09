p6_aws_servicecatalog_product_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog delete-product --id $id "$@"
}
