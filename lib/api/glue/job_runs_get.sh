######################################################################
#<
#
# Function:
#      = p6_aws_glue_job_runs_get(job_name)
#
# Arg(s):
#    job_name - 
#
#
#>
######################################################################
p6_aws_glue_job_runs_get() {
    local job_name="$1"
    shift 1

    p6_run_read_cmd aws glue get-job-runs --job-name $job_name "$@"
}