######################################################################
#<
#
# Function:
#      = p6_aws_serverlessrepo_application_policy_put(application_id, statements)
#
# Arg(s):
#    application_id - 
#    statements - 
#
#
#>
######################################################################
p6_aws_serverlessrepo_application_policy_put() {
    local application_id="$1"
    local statements="$2"
    shift 2

    p6_run_write_cmd aws serverlessrepo put-application-policy --application-id $application_id --statements $statements "$@"
}