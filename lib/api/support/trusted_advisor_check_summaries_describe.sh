######################################################################
#<
#
# Function:
#	p6_aws_support_trusted_advisor_check_summaries_describe(check_ids)
#
#  Args:
#	check_ids - 
#
#>
######################################################################
p6_aws_support_trusted_advisor_check_summaries_describe() {
    local check_ids="$1"
    shift 1

    p6_run_read_cmd aws support describe-trusted-advisor-check-summaries --check-ids $check_ids "$@"
}