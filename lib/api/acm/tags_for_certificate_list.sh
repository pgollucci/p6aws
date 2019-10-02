######################################################################
#<
#
# Function:
#	p6_aws_acm_tags_for_certificate_list(certificate_arn)
#
#  Args:
#	certificate_arn - 
#
#>
######################################################################
p6_aws_acm_tags_for_certificate_list() {
    local certificate_arn="$1"
    shift 1

    p6_run_read_cmd aws acm list-tags-for-certificate --certificate-arn $certificate_arn "$@"
}