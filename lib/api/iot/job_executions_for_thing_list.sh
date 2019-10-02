######################################################################
#<
#
# Function:
#	p6_aws_iot_job_executions_for_thing_list(thing_name)
#
#  Args:
#	thing_name - 
#
#>
######################################################################
p6_aws_iot_job_executions_for_thing_list() {
    local thing_name="$1"
    shift 1

    p6_run_read_cmd aws iot list-job-executions-for-thing --thing-name $thing_name "$@"
}