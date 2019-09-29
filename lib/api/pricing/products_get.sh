######################################################################
#<
#
# Function:
#      = p6_aws_pricing_products_get()
#
#
#
#>
######################################################################
p6_aws_pricing_products_get() {

    p6_run_read_cmd aws pricing get-products "$@"
}