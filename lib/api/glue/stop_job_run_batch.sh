######################################################################
#<
#
# Function:
#	p6_aws_glue_stop_job_run_batch(job_name, job_run_ids)
#
#  Args:
#	job_name - 
#	job_run_ids - 
#
#>
######################################################################
p6_aws_glue_stop_job_run_batch() {
    local job_name="$1"
    local job_run_ids="$2"
    shift 2

    p6_run_write_cmd aws glue batch-stop-job-run --job-name $job_name --job-run-ids $job_run_ids "$@"
}