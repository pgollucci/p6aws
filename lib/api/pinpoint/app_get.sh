######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_app_get(application_id)
#
# Arg(s):
#    application_id - 
#
#
#>
######################################################################
p6_aws_pinpoint_app_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint get-app --application-id $application_id "$@"
}