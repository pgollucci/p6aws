######################################################################
#<
#
# Function:
#	p6_aws_cur_report_definitions_describe()
#
#>
######################################################################
p6_aws_cur_report_definitions_describe() {

    p6_run_read_cmd aws cur describe-report-definitions "$@"
}