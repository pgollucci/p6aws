######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_job_acknowledge(job_id, nonce)
#
# Arg(s):
#    job_id - 
#    nonce - 
#
#
#>
######################################################################
p6_aws_codepipeline_job_acknowledge() {
    local job_id="$1"
    local nonce="$2"
    shift 2

    p6_run_write_cmd aws codepipeline acknowledge-job --job-id $job_id --nonce $nonce "$@"
}