######################################################################
#<
#
# Function:
#      = p6_aws_glue_job_delete(job_name)
#
# Arg(s):
#    job_name - 
#
#
#>
######################################################################
p6_aws_glue_job_delete() {
    local job_name="$1"
    shift 1

    p6_run_write_cmd aws glue delete-job --job-name $job_name "$@"
}