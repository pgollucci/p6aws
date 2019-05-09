p6_aws_servicecatalog_product_create() {
    local name="$1"
    local owner="$2"
    local product_type="$3"
    local provisioning_artifact_parameters="$4"
    shift 4

    p6_run_write_cmd aws servicecatalog create-product --name $name --owner $owner --product-type $product_type --provisioning-artifact-parameters $provisioning_artifact_parameters "$@"
}
