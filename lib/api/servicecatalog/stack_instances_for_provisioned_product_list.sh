######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_stack_instances_for_provisioned_product_list(provisioned_product_id)
#
#  Args:
#	provisioned_product_id - 
#
#>
######################################################################
p6_aws_servicecatalog_stack_instances_for_provisioned_product_list() {
    local provisioned_product_id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog list-stack-instances-for-provisioned-product --provisioned-product-id $provisioned_product_id "$@"
}