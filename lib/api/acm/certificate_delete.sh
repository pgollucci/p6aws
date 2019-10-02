######################################################################
#<
#
# Function:
#	p6_aws_acm_certificate_delete(certificate_arn)
#
#  Args:
#	certificate_arn - 
#
#>
######################################################################
p6_aws_acm_certificate_delete() {
    local certificate_arn="$1"
    shift 1

    p6_run_write_cmd aws acm delete-certificate --certificate-arn $certificate_arn "$@"
}