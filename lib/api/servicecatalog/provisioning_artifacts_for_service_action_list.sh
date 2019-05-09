p6_aws_servicecatalog_provisioning_artifacts_for_service_action_list() {
    local service_action_id="$1"
    shift 1

    p6_log_and_run aws servicecatalog list-provisioning-artifacts-for-service-action --service-action-id $service_action_id "$@"
}
