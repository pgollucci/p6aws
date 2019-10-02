######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_distribution_create()
#
#>
######################################################################
p6_aws_cloudfront_distribution_create() {

    p6_run_write_cmd aws cloudfront create-distribution "$@"
}