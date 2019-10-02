######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_provisioned_product_service_action_execute(provisioned_product_id, service_action_id)
#
#  Args:
#	provisioned_product_id - 
#	service_action_id - 
#
#>
######################################################################
p6_aws_servicecatalog_provisioned_product_service_action_execute() {
    local provisioned_product_id="$1"
    local service_action_id="$2"
    shift 2

    p6_run_write_cmd aws servicecatalog execute-provisioned-product-service-action --provisioned-product-id $provisioned_product_id --service-action-id $service_action_id "$@"
}