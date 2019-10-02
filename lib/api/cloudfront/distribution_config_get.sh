######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_distribution_config_get(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_cloudfront_distribution_config_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws cloudfront get-distribution-config --id $id "$@"
}