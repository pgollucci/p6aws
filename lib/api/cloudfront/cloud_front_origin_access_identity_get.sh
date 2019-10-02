######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_cloud_front_origin_access_identity_get(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_cloudfront_cloud_front_origin_access_identity_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws cloudfront get-cloud-front-origin-access-identity --id $id "$@"
}