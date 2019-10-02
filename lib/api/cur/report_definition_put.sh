######################################################################
#<
#
# Function:
#	p6_aws_cur_report_definition_put(report_definition)
#
#  Args:
#	report_definition - 
#
#>
######################################################################
p6_aws_cur_report_definition_put() {
    local report_definition="$1"
    shift 1

    p6_run_write_cmd aws cur put-report-definition --report-definition $report_definition "$@"
}