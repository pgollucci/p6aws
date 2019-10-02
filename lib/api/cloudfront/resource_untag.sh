######################################################################
#<
#
# Function:
#	p6_aws_cloudfront_resource_untag(resource, tag_keys)
#
#  Args:
#	resource - 
#	tag_keys - 
#
#>
######################################################################
p6_aws_cloudfront_resource_untag() {
    local resource="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws cloudfront untag-resource --resource $resource --tag-keys $tag_keys "$@"
}