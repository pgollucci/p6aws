######################################################################
#<
#
# Function:
#      = p6_aws_serverlessrepo_application_delete(application_id)
#
# Arg(s):
#    application_id - 
#
#
#>
######################################################################
p6_aws_serverlessrepo_application_delete() {
    local application_id="$1"
    shift 1

    p6_run_write_cmd aws serverlessrepo delete-application --application-id $application_id "$@"
}