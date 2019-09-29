######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_deliverability_dashboard_option_put(dashboard_enabled)
#
# Arg(s):
#    dashboard_enabled - 
#
#
#>
######################################################################
p6_aws_pinpoint_email_deliverability_dashboard_option_put() {
    local dashboard_enabled="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-email put-deliverability-dashboard-option --dashboard-enabled $dashboard_enabled "$@"
}