######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_deliverability_test_report_create(from_email_address, content)
#
# Arg(s):
#    from_email_address - 
#    content - 
#
#
#>
######################################################################
p6_aws_pinpoint_email_deliverability_test_report_create() {
    local from_email_address="$1"
    local content="$2"
    shift 2

    p6_run_write_cmd aws pinpoint-email create-deliverability-test-report --from-email-address $from_email_address --content $content "$@"
}