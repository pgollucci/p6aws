######################################################################
#<
#
# Function:
#	p6_aws_iot_certificate_register(certificate_pem)
#
#  Args:
#	certificate_pem - 
#
#>
######################################################################
p6_aws_iot_certificate_register() {
    local certificate_pem="$1"
    shift 1

    p6_run_write_cmd aws iot register-certificate --certificate-pem $certificate_pem "$@"
}