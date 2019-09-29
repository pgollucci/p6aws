######################################################################
#<
#
# Function:
#      = p6_aws_deploy_application_revisions_list(application_name)
#
# Arg(s):
#    application_name - 
#
#
#>
######################################################################
p6_aws_deploy_application_revisions_list() {
    local application_name="$1"
    shift 1

    p6_run_read_cmd aws deploy list-application-revisions --application-name $application_name "$@"
}