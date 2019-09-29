######################################################################
#<
#
# Function:
#      = p6_aws_mgh_application_state_describe(application_id)
#
# Arg(s):
#    application_id - 
#
#
#>
######################################################################
p6_aws_mgh_application_state_describe() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws mgh describe-application-state --application-id $application_id "$@"
}