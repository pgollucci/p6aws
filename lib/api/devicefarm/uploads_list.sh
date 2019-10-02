######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_uploads_list(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_devicefarm_uploads_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm list-uploads --arn $arn "$@"
}