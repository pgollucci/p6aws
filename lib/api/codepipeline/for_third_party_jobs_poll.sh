######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_for_third_party_jobs_poll(action_type_id)
#
# Arg(s):
#    action_type_id - 
#
#
#>
######################################################################
p6_aws_codepipeline_for_third_party_jobs_poll() {
    local action_type_id="$1"
    shift 1

    p6_run_write_cmd aws codepipeline poll-for-third-party-jobs --action-type-id $action_type_id "$@"
}