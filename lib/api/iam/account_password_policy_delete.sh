######################################################################
#<
#
# Function:
#      = p6_aws_iam_account_password_policy_delete()
#
#
#
#>
######################################################################
p6_aws_iam_account_password_policy_delete() {

    p6_run_write_cmd aws iam delete-account-password-policy "$@"
}