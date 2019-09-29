######################################################################
#<
#
# Function:
#      = p6_aws_iot_job_delete(job_id)
#
# Arg(s):
#    job_id - 
#
#
#>
######################################################################
p6_aws_iot_job_delete() {
    local job_id="$1"
    shift 1

    p6_run_write_cmd aws iot delete-job --job-id $job_id "$@"
}