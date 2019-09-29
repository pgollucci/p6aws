######################################################################
#<
#
# Function:
#      = p6_aws_mgh_application_state_notify(application_id, status)
#
# Arg(s):
#    application_id - 
#    status - 
#
#
#>
######################################################################
p6_aws_mgh_application_state_notify() {
    local application_id="$1"
    local status="$2"
    shift 2

    p6_run_write_cmd aws mgh notify-application-state --application-id $application_id --status $status "$@"
}