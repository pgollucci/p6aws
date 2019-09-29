######################################################################
#<
#
# Function:
#      = p6_aws_robomaker_simulation_job_cancel(job)
#
# Arg(s):
#    job - 
#
#
#>
######################################################################
p6_aws_robomaker_simulation_job_cancel() {
    local job="$1"
    shift 1

    p6_run_write_cmd aws robomaker cancel-simulation-job --job $job "$@"
}