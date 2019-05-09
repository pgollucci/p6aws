p6_aws_servicecatalog_service_action_update() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog update-service-action --id $id "$@"
}
