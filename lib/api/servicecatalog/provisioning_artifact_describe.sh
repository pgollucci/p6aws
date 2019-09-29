######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_provisioning_artifact_describe(provisioning_artifact_id, product_id)
#
# Arg(s):
#    provisioning_artifact_id - 
#    product_id - 
#
#
#>
######################################################################
p6_aws_servicecatalog_provisioning_artifact_describe() {
    local provisioning_artifact_id="$1"
    local product_id="$2"
    shift 2

    p6_run_read_cmd aws servicecatalog describe-provisioning-artifact --provisioning-artifact-id $provisioning_artifact_id --product-id $product_id "$@"
}