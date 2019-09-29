######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_deliverability_test_reports_list()
#
#
#
#>
######################################################################
p6_aws_pinpoint_email_deliverability_test_reports_list() {

    p6_run_read_cmd aws pinpoint-email list-deliverability-test-reports "$@"
}