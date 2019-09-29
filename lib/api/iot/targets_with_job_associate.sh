######################################################################
#<
#
# Function:
#      = p6_aws_iot_targets_with_job_associate(targets, job_id)
#
# Arg(s):
#    targets - 
#    job_id - 
#
#
#>
######################################################################
p6_aws_iot_targets_with_job_associate() {
    local targets="$1"
    local job_id="$2"
    shift 2

    p6_run_read_cmd aws iot associate-targets-with-job --targets $targets --job-id $job_id "$@"
}