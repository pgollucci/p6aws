######################################################################
#<
#
# Function:
#	p6_aws_iam_account_password_policy_get()
#
#>
######################################################################
p6_aws_iam_account_password_policy_get() {

    p6_run_read_cmd aws iam get-account-password-policy "$@"
}