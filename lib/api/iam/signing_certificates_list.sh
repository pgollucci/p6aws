######################################################################
#<
#
# Function:
#	p6_aws_iam_signing_certificates_list()
#
#>
######################################################################
p6_aws_iam_signing_certificates_list() {

    p6_run_read_cmd aws iam list-signing-certificates "$@"
}