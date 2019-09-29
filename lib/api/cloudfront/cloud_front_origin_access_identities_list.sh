######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_cloud_front_origin_access_identities_list()
#
#
#
#>
######################################################################
p6_aws_cloudfront_cloud_front_origin_access_identities_list() {

    p6_run_read_cmd aws cloudfront list-cloud-front-origin-access-identities "$@"
}