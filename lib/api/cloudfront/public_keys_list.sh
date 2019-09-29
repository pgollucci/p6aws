######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_public_keys_list()
#
#
#
#>
######################################################################
p6_aws_cloudfront_public_keys_list() {

    p6_run_read_cmd aws cloudfront list-public-keys "$@"
}