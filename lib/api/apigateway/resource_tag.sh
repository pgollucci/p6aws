######################################################################
#<
#
# Function:
#	p6_aws_apigateway_resource_tag(resource_arn, tags)
#
#  Args:
#	resource_arn - 
#	tags - 
#
#>
######################################################################
p6_aws_apigateway_resource_tag() {
    local resource_arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws apigateway tag-resource --resource-arn $resource_arn --tags $tags "$@"
}