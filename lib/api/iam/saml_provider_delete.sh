######################################################################
#<
#
# Function:
#	p6_aws_iam_saml_provider_delete(saml_provider_arn)
#
#  Args:
#	saml_provider_arn - 
#
#>
######################################################################
p6_aws_iam_saml_provider_delete() {
    local saml_provider_arn="$1"
    shift 1

    p6_run_write_cmd aws iam delete-saml-provider --saml-provider-arn $saml_provider_arn "$@"
}