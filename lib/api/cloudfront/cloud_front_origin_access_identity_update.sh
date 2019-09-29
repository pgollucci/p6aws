######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_cloud_front_origin_access_identity_update(cloud_front_origin_access_identity_config, id)
#
# Arg(s):
#    cloud_front_origin_access_identity_config - 
#    id - 
#
#
#>
######################################################################
p6_aws_cloudfront_cloud_front_origin_access_identity_update() {
    local cloud_front_origin_access_identity_config="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws cloudfront update-cloud-front-origin-access-identity --cloud-front-origin-access-identity-config $cloud_front_origin_access_identity_config --id $id "$@"
}