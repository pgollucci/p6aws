######################################################################
#<
#
# Function:
#	p6_aws_batch_job_submit(job_name, job_queue, job_definition)
#
#  Args:
#	job_name - 
#	job_queue - 
#	job_definition - 
#
#>
######################################################################
p6_aws_batch_job_submit() {
    local job_name="$1"
    local job_queue="$2"
    local job_definition="$3"
    shift 3

    p6_run_write_cmd aws batch submit-job --job-name $job_name --job-queue $job_queue --job-definition $job_definition "$@"
}