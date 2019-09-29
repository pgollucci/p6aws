######################################################################
#<
#
# Function:
#      = p6_aws_glue_job_bookmark_reset(job_name)
#
# Arg(s):
#    job_name - 
#
#
#>
######################################################################
p6_aws_glue_job_bookmark_reset() {
    local job_name="$1"
    shift 1

    p6_run_write_cmd aws glue reset-job-bookmark --job-name $job_name "$@"
}