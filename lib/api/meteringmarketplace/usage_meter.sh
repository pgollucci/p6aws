######################################################################
#<
#
# Function:
#	p6_aws_meteringmarketplace_usage_meter(product_code, timestamp, usage_dimension)
#
#  Args:
#	product_code - 
#	timestamp - 
#	usage_dimension - 
#
#>
######################################################################
p6_aws_meteringmarketplace_usage_meter() {
    local product_code="$1"
    local timestamp="$2"
    local usage_dimension="$3"
    shift 3

    p6_run_write_cmd aws meteringmarketplace meter-usage --product-code $product_code --timestamp $timestamp --usage-dimension $usage_dimension "$@"
}