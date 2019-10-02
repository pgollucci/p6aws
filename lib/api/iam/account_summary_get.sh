######################################################################
#<
#
# Function:
#	p6_aws_iam_account_summary_get()
#
#>
######################################################################
p6_aws_iam_account_summary_get() {

    p6_run_read_cmd aws iam get-account-summary "$@"
}