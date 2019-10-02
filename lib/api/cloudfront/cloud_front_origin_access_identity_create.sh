######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_cloud_front_origin_access_identity_create(cloud_front_origin_access_identity_config)
#
#  Args:
#	cloud_front_origin_access_identity_config - 
#
#>
######################################################################
p6_aws_cloudfront_cloud_front_origin_access_identity_create() {
    local cloud_front_origin_access_identity_config="$1"
    shift 1

    p6_run_write_cmd aws cloudfront create-cloud-front-origin-access-identity --cloud-front-origin-access-identity-config $cloud_front_origin_access_identity_config "$@"
}