######################################################################
#<
#
# Function:
#	p6_aws_acm_certificate_options_update(certificate_arn, options)
#
#  Args:
#	certificate_arn - 
#	options - 
#
#>
######################################################################
p6_aws_acm_certificate_options_update() {
    local certificate_arn="$1"
    local options="$2"
    shift 2

    p6_run_write_cmd aws acm update-certificate-options --certificate-arn $certificate_arn --options $options "$@"
}