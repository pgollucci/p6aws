######################################################################
#<
#
# Function:
#      = p6_aws_iam_credential_report_generate()
#
#
#
#>
######################################################################
p6_aws_iam_credential_report_generate() {

    p6_run_write_cmd aws iam generate-credential-report "$@"
}