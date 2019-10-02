######################################################################
#<
#
# Function:
#	p6_aws_mediaconvert_job_get(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_mediaconvert_job_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws mediaconvert get-job --id $id "$@"
}