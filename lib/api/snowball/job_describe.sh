######################################################################
#<
#
# Function:
#      = p6_aws_snowball_job_describe(job_id)
#
# Arg(s):
#    job_id - 
#
#
#>
######################################################################
p6_aws_snowball_job_describe() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws snowball describe-job --job-id $job_id "$@"
}