######################################################################
#<
#
# Function:
#      = p6_aws_lakeformation_resource_describe(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_lakeformation_resource_describe() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws lakeformation describe-resource --resource-arn $resource_arn "$@"
}