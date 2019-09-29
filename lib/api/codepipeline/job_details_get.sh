######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_job_details_get(job_id)
#
# Arg(s):
#    job_id - 
#
#
#>
######################################################################
p6_aws_codepipeline_job_details_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws codepipeline get-job-details --job-id $job_id "$@"
}