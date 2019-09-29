######################################################################
#<
#
# Function:
#      = p6_aws_iot_certificates_by_ca_list(ca_certificate_id)
#
# Arg(s):
#    ca_certificate_id - 
#
#
#>
######################################################################
p6_aws_iot_certificates_by_ca_list() {
    local ca_certificate_id="$1"
    shift 1

    p6_run_read_cmd aws iot list-certificates-by-ca --ca-certificate-id $ca_certificate_id "$@"
}