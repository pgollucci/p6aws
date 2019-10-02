######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_resource_tag(resource_arn)
#
#  Args:
#	resource_arn - 
#
#>
######################################################################
p6_aws_cognito_idp_resource_tag() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp tag-resource --resource-arn $resource_arn "$@"
}