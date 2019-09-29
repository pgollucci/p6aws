######################################################################
#<
#
# Function:
#      = p6_aws_cloudwatch_dashboards_list()
#
#
#
#>
######################################################################
p6_aws_cloudwatch_dashboards_list() {

    p6_run_read_cmd aws cloudwatch list-dashboards "$@"
}