######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_provisioned_product_update()
#
#>
######################################################################
p6_aws_servicecatalog_provisioned_product_update() {

    p6_run_write_cmd aws servicecatalog update-provisioned-product "$@"
}