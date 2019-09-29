######################################################################
#<
#
# Function:
#      = p6_aws_cloudwatch_dashboard_get(dashboard_name)
#
# Arg(s):
#    dashboard_name - 
#
#
#>
######################################################################
p6_aws_cloudwatch_dashboard_get() {
    local dashboard_name="$1"
    shift 1

    p6_run_read_cmd aws cloudwatch get-dashboard --dashboard-name $dashboard_name "$@"
}