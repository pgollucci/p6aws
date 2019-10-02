######################################################################
#<
#
# Function:
#	p6_aws_iam_saml_providers_list()
#
#>
######################################################################
p6_aws_iam_saml_providers_list() {

    p6_run_read_cmd aws iam list-saml-providers "$@"
}