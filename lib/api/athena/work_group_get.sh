######################################################################
#<
#
# Function:
#	p6_aws_athena_work_group_get(work_group)
#
#  Args:
#	work_group - 
#
#>
######################################################################
p6_aws_athena_work_group_get() {
    local work_group="$1"
    shift 1

    p6_run_read_cmd aws athena get-work-group --work-group $work_group "$@"
}