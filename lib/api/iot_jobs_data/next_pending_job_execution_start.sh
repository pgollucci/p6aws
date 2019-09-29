######################################################################
#<
#
# Function:
#      = p6_aws_iot_jobs_data_next_pending_job_execution_start(thing_name)
#
# Arg(s):
#    thing_name - 
#
#
#>
######################################################################
p6_aws_iot_jobs_data_next_pending_job_execution_start() {
    local thing_name="$1"
    shift 1

    p6_run_write_cmd aws iot-jobs-data start-next-pending-job-execution --thing-name $thing_name "$@"
}