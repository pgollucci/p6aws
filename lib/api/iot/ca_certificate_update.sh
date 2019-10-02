######################################################################
#<
#
# Function:
#	p6_aws_iot_ca_certificate_update(certificate_id)
#
#  Args:
#	certificate_id - 
#
#>
######################################################################
p6_aws_iot_ca_certificate_update() {
    local certificate_id="$1"
    shift 1

    p6_run_write_cmd aws iot update-ca-certificate --certificate-id $certificate_id "$@"
}