######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_third_party_job_details_get(job_id, client_token)
#
# Arg(s):
#    job_id - 
#    client_token - 
#
#
#>
######################################################################
p6_aws_codepipeline_third_party_job_details_get() {
    local job_id="$1"
    local client_token="$2"
    shift 2

    p6_run_read_cmd aws codepipeline get-third-party-job-details --job-id $job_id --client-token $client_token "$@"
}