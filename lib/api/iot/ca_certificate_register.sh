######################################################################
#<
#
# Function:
#      = p6_aws_iot_ca_certificate_register(ca_certificate, verification_certificate)
#
# Arg(s):
#    ca_certificate - 
#    verification_certificate - 
#
#
#>
######################################################################
p6_aws_iot_ca_certificate_register() {
    local ca_certificate="$1"
    local verification_certificate="$2"
    shift 2

    p6_run_write_cmd aws iot register-ca-certificate --ca-certificate $ca_certificate --verification-certificate $verification_certificate "$@"
}