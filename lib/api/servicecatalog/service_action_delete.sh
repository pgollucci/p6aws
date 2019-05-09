p6_aws_servicecatalog_service_action_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws servicecatalog delete-service-action --id $id "$@"
}
