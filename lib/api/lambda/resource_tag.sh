######################################################################
#<
#
# Function:
#      = p6_aws_lambda_resource_tag(resource, tags)
#
# Arg(s):
#    resource - 
#    tags - 
#
#
#>
######################################################################
p6_aws_lambda_resource_tag() {
    local resource="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws lambda tag-resource --resource $resource --tags $tags "$@"
}