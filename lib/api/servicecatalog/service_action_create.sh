p6_aws_servicecatalog_service_action_create() {
    local name="$1"
    local definition_type="$2"
    local definition="$3"
    shift 3

    p6_log_or_run aws servicecatalog create-service-action --name $name --definition-type $definition_type --definition $definition "$@"
}
