######################################################################
#<
#
# Function:
#      = p6_aws_appstream_usage_report_subscription_delete()
#
#
#
#>
######################################################################
p6_aws_appstream_usage_report_subscription_delete() {

    p6_run_write_cmd aws appstream delete-usage-report-subscription "$@"
}