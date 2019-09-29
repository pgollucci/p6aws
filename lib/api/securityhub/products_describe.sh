######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_products_describe()
#
#
#
#>
######################################################################
p6_aws_securityhub_products_describe() {

    p6_run_read_cmd aws securityhub describe-products "$@"
}