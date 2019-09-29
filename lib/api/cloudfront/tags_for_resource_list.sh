######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_tags_for_resource_list(resource)
#
# Arg(s):
#    resource - 
#
#
#>
######################################################################
p6_aws_cloudfront_tags_for_resource_list() {
    local resource="$1"
    shift 1

    p6_run_read_cmd aws cloudfront list-tags-for-resource --resource $resource "$@"
}