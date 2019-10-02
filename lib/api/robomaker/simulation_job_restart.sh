######################################################################
#<
#
# Function:
#	p6_aws_robomaker_simulation_job_restart(job)
#
#  Args:
#	job - 
#
#>
######################################################################
p6_aws_robomaker_simulation_job_restart() {
    local job="$1"
    shift 1

    p6_run_write_cmd aws robomaker restart-simulation-job --job $job "$@"
}