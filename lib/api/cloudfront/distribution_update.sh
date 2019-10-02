######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_distribution_update(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_cloudfront_distribution_update() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws cloudfront update-distribution --id $id "$@"
}