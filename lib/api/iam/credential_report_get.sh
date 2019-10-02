######################################################################
#<
#
# Function:
#	p6_aws_iam_credential_report_get()
#
#>
######################################################################
p6_aws_iam_credential_report_get() {

    p6_run_read_cmd aws iam get-credential-report "$@"
}