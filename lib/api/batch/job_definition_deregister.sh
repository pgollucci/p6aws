######################################################################
#<
#
# Function:
#      = p6_aws_batch_job_definition_deregister(job_definition)
#
# Arg(s):
#    job_definition - 
#
#
#>
######################################################################
p6_aws_batch_job_definition_deregister() {
    local job_definition="$1"
    shift 1

    p6_run_write_cmd aws batch deregister-job-definition --job-definition $job_definition "$@"
}