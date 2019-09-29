######################################################################
#<
#
# Function:
#      = p6_aws_iam_account_password_policy_update()
#
#
#
#>
######################################################################
p6_aws_iam_account_password_policy_update() {

    p6_run_write_cmd aws iam update-account-password-policy "$@"
}