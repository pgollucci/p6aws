######################################################################
#<
#
# Function:
#	p6_aws_support_trusted_advisor_checks_describe(language)
#
#  Args:
#	language - 
#
#>
######################################################################
p6_aws_support_trusted_advisor_checks_describe() {
    local language="$1"
    shift 1

    p6_run_read_cmd aws support describe-trusted-advisor-checks --language $language "$@"
}