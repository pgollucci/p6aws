######################################################################
#<
#
# Function:
#      = p6_aws_serverlessrepo_application_get(application_id)
#
# Arg(s):
#    application_id - 
#
#
#>
######################################################################
p6_aws_serverlessrepo_application_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws serverlessrepo get-application --application-id $application_id "$@"
}