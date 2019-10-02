######################################################################
#<
#
# Function:
#	p6_aws_glue_job_get(job_name)
#
#  Args:
#	job_name - 
#
#>
######################################################################
p6_aws_glue_job_get() {
    local job_name="$1"
    shift 1

    p6_run_read_cmd aws glue get-job --job-name $job_name "$@"
}