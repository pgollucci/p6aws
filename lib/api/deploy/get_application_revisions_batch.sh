######################################################################
#<
#
# Function:
#      = p6_aws_deploy_get_application_revisions_batch(application_name, revisions)
#
# Arg(s):
#    application_name - 
#    revisions - 
#
#
#>
######################################################################
p6_aws_deploy_get_application_revisions_batch() {
    local application_name="$1"
    local revisions="$2"
    shift 2

    p6_run_read_cmd aws deploy batch-get-application-revisions --application-name $application_name --revisions $revisions "$@"
}