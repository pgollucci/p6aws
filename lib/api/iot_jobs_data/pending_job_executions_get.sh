######################################################################
#<
#
# Function:
#	p6_aws_iot_jobs_data_pending_job_executions_get(thing_name)
#
#  Args:
#	thing_name - 
#
#>
######################################################################
p6_aws_iot_jobs_data_pending_job_executions_get() {
    local thing_name="$1"
    shift 1

    p6_run_read_cmd aws iot-jobs-data get-pending-job-executions --thing-name $thing_name "$@"
}