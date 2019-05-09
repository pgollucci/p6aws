p6_aws_servicecatalog_provisioning_artifact_create() {
    local product_id="$1"
    local parameters="$2"
    shift 2

    p6_log_or_run aws servicecatalog create-provisioning-artifact --product-id $product_id --parameters $parameters "$@"
}
