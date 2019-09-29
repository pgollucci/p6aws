######################################################################
#<
#
# Function:
#      = p6_aws_iot_job_execution_cancel(job_id, thing_name)
#
# Arg(s):
#    job_id - 
#    thing_name - 
#
#
#>
######################################################################
p6_aws_iot_job_execution_cancel() {
    local job_id="$1"
    local thing_name="$2"
    shift 2

    p6_run_write_cmd aws iot cancel-job-execution --job-id $job_id --thing-name $thing_name "$@"
}