######################################################################
#<
#
# Function:
#	p6_aws_iot_job_execution_delete(job_id, thing_name, execution_number)
#
#  Args:
#	job_id - 
#	thing_name - 
#	execution_number - 
#
#>
######################################################################
p6_aws_iot_job_execution_delete() {
    local job_id="$1"
    local thing_name="$2"
    local execution_number="$3"
    shift 3

    p6_run_write_cmd aws iot delete-job-execution --job-id $job_id --thing-name $thing_name --execution-number $execution_number "$@"
}