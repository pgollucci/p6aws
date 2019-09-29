######################################################################
#<
#
# Function:
#      = p6_aws_iot_certificate_transfer_accept(certificate_id)
#
# Arg(s):
#    certificate_id - 
#
#
#>
######################################################################
p6_aws_iot_certificate_transfer_accept() {
    local certificate_id="$1"
    shift 1

    p6_run_write_cmd aws iot accept-certificate-transfer --certificate-id $certificate_id "$@"
}