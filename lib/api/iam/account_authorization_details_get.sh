######################################################################
#<
#
# Function:
#	p6_aws_iam_account_authorization_details_get()
#
#>
######################################################################
p6_aws_iam_account_authorization_details_get() {

    p6_run_read_cmd aws iam get-account-authorization-details "$@"
}