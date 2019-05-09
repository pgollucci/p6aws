p6_aws_servicecatalog_service_action_update() {
    local id="$1"
    shift 1

    p6_log_or_run aws servicecatalog update-service-action --id $id "$@"
}
