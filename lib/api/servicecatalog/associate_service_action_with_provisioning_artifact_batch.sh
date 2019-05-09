p6_aws_servicecatalog_associate_service_action_with_provisioning_artifact_batch() {
    local service_action_associations="$1"
    shift 1

    p6_log_or_run aws servicecatalog batch-associate-service-action-with-provisioning-artifact --service-action-associations $service_action_associations "$@"
}
