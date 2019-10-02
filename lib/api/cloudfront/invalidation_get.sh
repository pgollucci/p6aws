######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_invalidation_get(distribution_id, id)
#
#  Args:
#	distribution_id - 
#	id - 
#
#>
######################################################################
p6_aws_cloudfront_invalidation_get() {
    local distribution_id="$1"
    local id="$2"
    shift 2

    p6_run_read_cmd aws cloudfront get-invalidation --distribution-id $distribution_id --id $id "$@"
}