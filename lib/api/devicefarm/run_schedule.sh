######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_run_schedule(project_arn, test)
#
#  Args:
#	project_arn - 
#	test - 
#
#>
######################################################################
p6_aws_devicefarm_run_schedule() {
    local project_arn="$1"
    local test="$2"
    shift 2

    p6_run_write_cmd aws devicefarm schedule-run --project-arn $project_arn --test $test "$@"
}