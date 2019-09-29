######################################################################
#<
#
# Function:
#      = p6_aws_iot_certificate_transfer_reject(certificate_id)
#
# Arg(s):
#    certificate_id - 
#
#
#>
######################################################################
p6_aws_iot_certificate_transfer_reject() {
    local certificate_id="$1"
    shift 1

    p6_run_write_cmd aws iot reject-certificate-transfer --certificate-id $certificate_id "$@"
}