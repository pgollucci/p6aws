######################################################################
#<
#
# Function:
#	p6_aws_appstream_usage_report_subscriptions_describe()
#
#>
######################################################################
p6_aws_appstream_usage_report_subscriptions_describe() {

    p6_run_read_cmd aws appstream describe-usage-report-subscriptions "$@"
}