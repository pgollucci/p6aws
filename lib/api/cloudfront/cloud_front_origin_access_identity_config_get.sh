######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_cloud_front_origin_access_identity_config_get(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_cloudfront_cloud_front_origin_access_identity_config_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws cloudfront get-cloud-front-origin-access-identity-config --id $id "$@"
}