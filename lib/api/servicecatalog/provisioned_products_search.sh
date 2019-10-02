######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_provisioned_products_search()
#
#>
######################################################################
p6_aws_servicecatalog_provisioned_products_search() {

    p6_run_write_cmd aws servicecatalog search-provisioned-products "$@"
}