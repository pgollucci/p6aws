######################################################################
#<
#
# Function:
#	p6_aws_lightsail_resource_tag(resource_name, tags)
#
#  Args:
#	resource_name - 
#	tags - 
#
#>
######################################################################
p6_aws_lightsail_resource_tag() {
    local resource_name="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws lightsail tag-resource --resource-name $resource_name --tags $tags "$@"
}