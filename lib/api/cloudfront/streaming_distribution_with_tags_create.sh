######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_streaming_distribution_with_tags_create(streaming_distribution_config_with_tags)
#
#  Args:
#	streaming_distribution_config_with_tags - 
#
#>
######################################################################
p6_aws_cloudfront_streaming_distribution_with_tags_create() {
    local streaming_distribution_config_with_tags="$1"
    shift 1

    p6_run_write_cmd aws cloudfront create-streaming-distribution-with-tags --streaming-distribution-config-with-tags $streaming_distribution_config_with_tags "$@"
}