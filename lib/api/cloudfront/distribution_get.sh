######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_distribution_get(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_cloudfront_distribution_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws cloudfront get-distribution --id $id "$@"
}