######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_provisioning_artifacts_list(product_id)
#
#  Args:
#	product_id - 
#
#>
######################################################################
p6_aws_servicecatalog_provisioning_artifacts_list() {
    local product_id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog list-provisioning-artifacts --product-id $product_id "$@"
}