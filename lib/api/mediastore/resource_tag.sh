######################################################################
#<
#
# Function:
#	p6_aws_mediastore_resource_tag(resource, tags)
#
#  Args:
#	resource - 
#	tags - 
#
#>
######################################################################
p6_aws_mediastore_resource_tag() {
    local resource="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws mediastore tag-resource --resource $resource --tags $tags "$@"
}