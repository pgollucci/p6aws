######################################################################
#<
#
# Function:
#	p6_aws_athena_work_group_update(work_group)
#
#  Args:
#	work_group - 
#
#>
######################################################################
p6_aws_athena_work_group_update() {
    local work_group="$1"
    shift 1

    p6_run_write_cmd aws athena update-work-group --work-group $work_group "$@"
}