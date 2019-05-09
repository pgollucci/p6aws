p6_aws_servicecatalog_service_action_describe() {
    local id="$1"
    shift 1

    p6_log_and_run aws servicecatalog describe-service-action --id $id "$@"
}
