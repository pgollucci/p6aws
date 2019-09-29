######################################################################
#<
#
# Function:
#      = p6_aws_glue_job_run_get(job_name, run_id)
#
# Arg(s):
#    job_name - 
#    run_id - 
#
#
#>
######################################################################
p6_aws_glue_job_run_get() {
    local job_name="$1"
    local run_id="$2"
    shift 2

    p6_run_read_cmd aws glue get-job-run --job-name $job_name --run-id $run_id "$@"
}