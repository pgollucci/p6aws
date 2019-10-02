######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_provisioning_artifact_create(product_id, parameters)
#
#  Args:
#	product_id - 
#	parameters - 
#
#>
######################################################################
p6_aws_servicecatalog_provisioning_artifact_create() {
    local product_id="$1"
    local parameters="$2"
    shift 2

    p6_run_write_cmd aws servicecatalog create-provisioning-artifact --product-id $product_id --parameters $parameters "$@"
}