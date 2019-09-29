######################################################################
#<
#
# Function:
#      = p6_aws_iot_certificate_from_csr_create(certificate_signing_request)
#
# Arg(s):
#    certificate_signing_request - 
#
#
#>
######################################################################
p6_aws_iot_certificate_from_csr_create() {
    local certificate_signing_request="$1"
    shift 1

    p6_run_write_cmd aws iot create-certificate-from-csr --certificate-signing-request $certificate_signing_request "$@"
}