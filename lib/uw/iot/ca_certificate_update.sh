######################################################################
#<
#
# Function:
#	p6_aws_iot_auto_registration(certificate_id)
#
#  Args:
#	certificate_id - 
#
#>
######################################################################
p6_aws_iot_auto_registration() {
        local certificate_id="$1"
        shift 1

    cond_log_and_run aws iot update-ca-certificate --certificate-id $certificate_id --remove-auto-registration "$@"
}