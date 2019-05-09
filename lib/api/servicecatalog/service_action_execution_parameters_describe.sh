p6_aws_servicecatalog_service_action_execution_parameters_describe() {
    local provisioned_product_id="$1"
    local service_action_id="$2"
    shift 2

    p6_run_read_cmd aws servicecatalog describe-service-action-execution-parameters --provisioned-product-id $provisioned_product_id --service-action-id $service_action_id "$@"
}
