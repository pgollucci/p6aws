######################################################################
#<
#
# Function:
#	p6_aws_robomaker_deployment_job_cancel(job)
#
#  Args:
#	job - 
#
#>
######################################################################
p6_aws_robomaker_deployment_job_cancel() {
    local job="$1"
    shift 1

    p6_run_write_cmd aws robomaker cancel-deployment-job --job $job "$@"
}