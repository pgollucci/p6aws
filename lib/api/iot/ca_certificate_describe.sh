######################################################################
#<
#
# Function:
#      = p6_aws_iot_ca_certificate_describe(certificate_id)
#
# Arg(s):
#    certificate_id - 
#
#
#>
######################################################################
p6_aws_iot_ca_certificate_describe() {
    local certificate_id="$1"
    shift 1

    p6_run_read_cmd aws iot describe-ca-certificate --certificate-id $certificate_id "$@"
}