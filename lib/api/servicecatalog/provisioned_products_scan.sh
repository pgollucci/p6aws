######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_provisioned_products_scan()
#
#>
######################################################################
p6_aws_servicecatalog_provisioned_products_scan() {

    p6_run_write_cmd aws servicecatalog scan-provisioned-products "$@"
}