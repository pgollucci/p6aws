######################################################################
#<
#
# Function:
#	p6_aws_codepipeline_job_failure_result_put(job_id, failure_details)
#
#  Args:
#	job_id - 
#	failure_details - 
#
#>
######################################################################
p6_aws_codepipeline_job_failure_result_put() {
    local job_id="$1"
    local failure_details="$2"
    shift 2

    p6_run_write_cmd aws codepipeline put-job-failure-result --job-id $job_id --failure-details $failure_details "$@"
}