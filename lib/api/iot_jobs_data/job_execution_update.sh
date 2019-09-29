######################################################################
#<
#
# Function:
#      = p6_aws_iot_jobs_data_job_execution_update(job_id, thing_name, status)
#
# Arg(s):
#    job_id - 
#    thing_name - 
#    status - 
#
#
#>
######################################################################
p6_aws_iot_jobs_data_job_execution_update() {
    local job_id="$1"
    local thing_name="$2"
    local status="$3"
    shift 3

    p6_run_write_cmd aws iot-jobs-data update-job-execution --job-id $job_id --thing-name $thing_name --status $status "$@"
}