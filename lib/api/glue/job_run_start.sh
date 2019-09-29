######################################################################
#<
#
# Function:
#      = p6_aws_glue_job_run_start(job_name)
#
# Arg(s):
#    job_name - 
#
#
#>
######################################################################
p6_aws_glue_job_run_start() {
    local job_name="$1"
    shift 1

    p6_run_write_cmd aws glue start-job-run --job-name $job_name "$@"
}