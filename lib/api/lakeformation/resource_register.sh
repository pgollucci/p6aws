######################################################################
#<
#
# Function:
#      = p6_aws_lakeformation_resource_register(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_lakeformation_resource_register() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws lakeformation register-resource --resource-arn $resource_arn "$@"
}