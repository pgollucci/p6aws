######################################################################
#<
#
# Function:
#	p6_aws_acm_certificate_import(certificate, private_key)
#
#  Args:
#	certificate - 
#	private_key - 
#
#>
######################################################################
p6_aws_acm_certificate_import() {
    local certificate="$1"
    local private_key="$2"
    shift 2

    p6_run_write_cmd aws acm import-certificate --certificate $certificate --private-key $private_key "$@"
}