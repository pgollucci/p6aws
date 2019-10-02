######################################################################
#<
#
# Function:
#	p6_aws_snowball_address_create(address)
#
#  Args:
#	address - 
#
#>
######################################################################
p6_aws_snowball_address_create() {
    local address="$1"
    shift 1

    p6_run_write_cmd aws snowball create-address --address $address "$@"
}