######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_copy_product_status_describe(copy_product_token)
#
# Arg(s):
#    copy_product_token - 
#
#
#>
######################################################################
p6_aws_servicecatalog_copy_product_status_describe() {
    local copy_product_token="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog describe-copy-product-status --copy-product-token $copy_product_token "$@"
}