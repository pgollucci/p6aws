######################################################################
#<
#
# Function:
#	p6_aws_signer_signing_job_describe(job_id)
#
#  Args:
#	job_id - 
#
#>
######################################################################
p6_aws_signer_signing_job_describe() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws signer describe-signing-job --job-id $job_id "$@"
}