######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_streaming_distributions_list()
#
#
#
#>
######################################################################
p6_aws_cloudfront_streaming_distributions_list() {

    p6_run_read_cmd aws cloudfront list-streaming-distributions "$@"
}