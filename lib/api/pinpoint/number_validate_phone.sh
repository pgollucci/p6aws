######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_number_validate_phone(number_validate_request)
#
#  Args:
#	number_validate_request - 
#
#>
######################################################################
p6_aws_pinpoint_number_validate_phone() {
    local number_validate_request="$1"
    shift 1

    p6_run_write_cmd aws pinpoint phone-number-validate --number-validate-request $number_validate_request "$@"
}