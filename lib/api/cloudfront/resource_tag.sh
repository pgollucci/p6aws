######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_resource_tag(resource, tags)
#
#  Args:
#	resource - 
#	tags - 
#
#>
######################################################################
p6_aws_cloudfront_resource_tag() {
    local resource="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws cloudfront tag-resource --resource $resource --tags $tags "$@"
}