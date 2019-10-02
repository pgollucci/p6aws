######################################################################
#<
#
# Function:
#	p6_aws_support_trusted_advisor_check_result_describe(check_id)
#
#  Args:
#	check_id - 
#
#>
######################################################################
p6_aws_support_trusted_advisor_check_result_describe() {
    local check_id="$1"
    shift 1

    p6_run_read_cmd aws support describe-trusted-advisor-check-result --check-id $check_id "$@"
}