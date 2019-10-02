######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_product_provision(product_id, provisioning_artifact_id, provisioned_product_name)
#
#  Args:
#	product_id - 
#	provisioning_artifact_id - 
#	provisioned_product_name - 
#
#>
######################################################################
p6_aws_servicecatalog_product_provision() {
    local product_id="$1"
    local provisioning_artifact_id="$2"
    local provisioned_product_name="$3"
    shift 3

    p6_run_write_cmd aws servicecatalog provision-product --product-id $product_id --provisioning-artifact-id $provisioning_artifact_id --provisioned-product-name $provisioned_product_name "$@"
}