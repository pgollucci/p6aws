######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_product_copy(source_product_arn)
#
# Arg(s):
#    source_product_arn - 
#
#
#>
######################################################################
p6_aws_servicecatalog_product_copy() {
    local source_product_arn="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog copy-product --source-product-arn $source_product_arn "$@"
}