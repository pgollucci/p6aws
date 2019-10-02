######################################################################
#<
#
# Function:
#	p6_aws_iot_certificate_transfer(certificate_id, target_aws_account)
#
#  Args:
#	certificate_id - 
#	target_aws_account - 
#
#>
######################################################################
p6_aws_iot_certificate_transfer() {
    local certificate_id="$1"
    local target_aws_account="$2"
    shift 2

    p6_run_write_cmd aws iot transfer-certificate --certificate-id $certificate_id --target-aws-account $target_aws_account "$@"
}