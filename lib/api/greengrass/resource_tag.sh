######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_resource_tag(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_greengrass_resource_tag() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws greengrass tag-resource --resource-arn $resource_arn "$@"
}