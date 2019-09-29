######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_user_endpoints_get(application_id, user_id)
#
# Arg(s):
#    application_id - 
#    user_id - 
#
#
#>
######################################################################
p6_aws_pinpoint_user_endpoints_get() {
    local application_id="$1"
    local user_id="$2"
    shift 2

    p6_run_read_cmd aws pinpoint get-user-endpoints --application-id $application_id --user-id $user_id "$@"
}