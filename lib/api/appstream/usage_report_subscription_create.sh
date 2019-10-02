######################################################################
#<
#
# Function:
#	p6_aws_appstream_usage_report_subscription_create()
#
#>
######################################################################
p6_aws_appstream_usage_report_subscription_create() {

    p6_run_write_cmd aws appstream create-usage-report-subscription "$@"
}