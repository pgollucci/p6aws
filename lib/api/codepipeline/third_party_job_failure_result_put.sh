######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_third_party_job_failure_result_put(job_id, client_token, failure_details)
#
# Arg(s):
#    job_id - 
#    client_token - 
#    failure_details - 
#
#
#>
######################################################################
p6_aws_codepipeline_third_party_job_failure_result_put() {
    local job_id="$1"
    local client_token="$2"
    local failure_details="$3"
    shift 3

    p6_run_write_cmd aws codepipeline put-third-party-job-failure-result --job-id $job_id --client-token $client_token --failure-details $failure_details "$@"
}