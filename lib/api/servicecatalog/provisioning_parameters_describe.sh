p6_aws_servicecatalog_provisioning_parameters_describe() {
    local product_id="$1"
    local provisioning_artifact_id="$2"
    shift 2

    p6_run_read_cmd aws servicecatalog describe-provisioning-parameters --product-id $product_id --provisioning-artifact-id $provisioning_artifact_id "$@"
}
