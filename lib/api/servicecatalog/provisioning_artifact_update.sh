######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_provisioning_artifact_update(product_id, provisioning_artifact_id)
#
# Arg(s):
#    product_id - 
#    provisioning_artifact_id - 
#
#
#>
######################################################################
p6_aws_servicecatalog_provisioning_artifact_update() {
    local product_id="$1"
    local provisioning_artifact_id="$2"
    shift 2

    p6_run_write_cmd aws servicecatalog update-provisioning-artifact --product-id $product_id --provisioning-artifact-id $provisioning_artifact_id "$@"
}