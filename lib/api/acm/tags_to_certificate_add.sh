######################################################################
#<
#
# Function:
#	p6_aws_acm_tags_to_certificate_add(certificate_arn, tags)
#
#  Args:
#	certificate_arn - 
#	tags - 
#
#>
######################################################################
p6_aws_acm_tags_to_certificate_add() {
    local certificate_arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws acm add-tags-to-certificate --certificate-arn $certificate_arn --tags $tags "$@"
}