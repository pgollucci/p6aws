p6_aws_servicecatalog_service_actions_for_provisioning_artifact_list() {
    local product_id="$1"
    local provisioning_artifact_id="$2"
    shift 2

    p6_log_and_run aws servicecatalog list-service-actions-for-provisioning-artifact --product-id $product_id --provisioning-artifact-id $provisioning_artifact_id "$@"
}
