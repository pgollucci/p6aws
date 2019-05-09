p6_aws_servicecatalog_provisioned_product_properties_update() {
    local provisioned_product_id="$1"
    local provisioned_product_properties="$2"
    shift 2

    p6_run_write_cmd aws servicecatalog update-provisioned-product-properties --provisioned-product-id $provisioned_product_id --provisioned-product-properties $provisioned_product_properties "$@"
}
