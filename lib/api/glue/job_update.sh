######################################################################
#<
#
# Function:
#	p6_aws_glue_job_update(job_name, job_update)
#
#  Args:
#	job_name - 
#	job_update - 
#
#>
######################################################################
p6_aws_glue_job_update() {
    local job_name="$1"
    local job_update="$2"
    shift 2

    p6_run_write_cmd aws glue update-job --job-name $job_name --job-update $job_update "$@"
}