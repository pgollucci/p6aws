######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_resource_untag(resource_arn)
#
#  Args:
#	resource_arn - 
#
#>
######################################################################
p6_aws_cognito_idp_resource_untag() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp untag-resource --resource-arn $resource_arn "$@"
}