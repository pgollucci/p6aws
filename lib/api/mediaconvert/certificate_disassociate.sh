######################################################################
#<
#
# Function:
#	p6_aws_mediaconvert_certificate_disassociate(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_mediaconvert_certificate_disassociate() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws mediaconvert disassociate-certificate --arn $arn "$@"
}