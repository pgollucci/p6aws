######################################################################
#<
#
# Function:
#	p6_aws_rekognition_celebrity_info_get(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_rekognition_celebrity_info_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws rekognition get-celebrity-info --id $id "$@"
}