######################################################################
#<
#
# Function:
#	p6_aws_iot_certificate_delete(certificate_id)
#
#  Args:
#	certificate_id - 
#
#>
######################################################################
p6_aws_iot_certificate_delete() {
    local certificate_id="$1"
    shift 1

    p6_run_write_cmd aws iot delete-certificate --certificate-id $certificate_id "$@"
}