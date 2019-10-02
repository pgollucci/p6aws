######################################################################
#<
#
# Function:
#	p6_aws_acm_certificate_export(certificate_arn, passphrase)
#
#  Args:
#	certificate_arn - 
#	passphrase - 
#
#>
######################################################################
p6_aws_acm_certificate_export() {
    local certificate_arn="$1"
    local passphrase="$2"
    shift 2

    p6_run_write_cmd aws acm export-certificate --certificate-arn $certificate_arn --passphrase $passphrase "$@"
}