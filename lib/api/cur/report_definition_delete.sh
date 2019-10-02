######################################################################
#<
#
# Function:
#	p6_aws_cur_report_definition_delete()
#
#>
######################################################################
p6_aws_cur_report_definition_delete() {

    p6_run_write_cmd aws cur delete-report-definition "$@"
}