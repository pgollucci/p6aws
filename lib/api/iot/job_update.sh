######################################################################
#<
#
# Function:
#      = p6_aws_iot_job_update(job_id)
#
# Arg(s):
#    job_id - 
#
#
#>
######################################################################
p6_aws_iot_job_update() {
    local job_id="$1"
    shift 1

    p6_run_write_cmd aws iot update-job --job-id $job_id "$@"
}