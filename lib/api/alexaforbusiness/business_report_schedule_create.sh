######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_business_report_schedule_create(format, content_range)
#
#  Args:
#	format - 
#	content_range - 
#
#>
######################################################################
p6_aws_alexaforbusiness_business_report_schedule_create() {
    local format="$1"
    local content_range="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness create-business-report-schedule --format $format --content-range $content_range "$@"
}