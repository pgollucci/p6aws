######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_business_report_schedules_list()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_business_report_schedules_list() {

    p6_run_read_cmd aws alexaforbusiness list-business-report-schedules "$@"
}