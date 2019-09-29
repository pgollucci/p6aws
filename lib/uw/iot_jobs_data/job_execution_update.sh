######################################################################
#<
#
# Function:
#      = p6_aws_iot_jobs_data_job_execution_state(job_id, thing_name, status)
#
# Arg(s):
#    job_id - 
#    thing_name - 
#    status - 
#
#
#>
######################################################################
p6_aws_iot_jobs_data_job_execution_state() {
        local job_id="$1"
        local thing_name="$2"
        local status="$3"
        shift 3

    cond_log_and_run aws iot-jobs-data update-job-execution --job-id $job_id --thing-name $thing_name --status $status --include-job-execution-state "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_iot_jobs_data_job_document(job_id, thing_name, status)
#
# Arg(s):
#    job_id - 
#    thing_name - 
#    status - 
#
#
#>
######################################################################
p6_aws_iot_jobs_data_job_document() {
        local job_id="$1"
        local thing_name="$2"
        local status="$3"
        shift 3

    cond_log_and_run aws iot-jobs-data update-job-execution --job-id $job_id --thing-name $thing_name --status $status --include-job-document "$@"
}
