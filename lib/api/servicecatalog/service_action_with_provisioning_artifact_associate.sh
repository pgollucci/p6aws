p6_aws_servicecatalog_service_action_with_provisioning_artifact_associate() {
    local product_id="$1"
    local provisioning_artifact_id="$2"
    local service_action_id="$3"
    shift 3

    p6_run_write_cmd aws servicecatalog associate-service-action-with-provisioning-artifact --product-id $product_id --provisioning-artifact-id $provisioning_artifact_id --service-action-id $service_action_id "$@"
}
