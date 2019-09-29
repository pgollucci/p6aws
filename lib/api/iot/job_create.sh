######################################################################
#<
#
# Function:
#      = p6_aws_iot_job_create(job_id, targets)
#
# Arg(s):
#    job_id - 
#    targets - 
#
#
#>
######################################################################
p6_aws_iot_job_create() {
    local job_id="$1"
    local targets="$2"
    shift 2

    p6_run_write_cmd aws iot create-job --job-id $job_id --targets $targets "$@"
}