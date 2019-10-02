######################################################################
#<
#
# Function:
#	p6_aws_snowball_address_describe(address_id)
#
#  Args:
#	address_id - 
#
#>
######################################################################
p6_aws_snowball_address_describe() {
    local address_id="$1"
    shift 1

    p6_run_read_cmd aws snowball describe-address --address-id $address_id "$@"
}