######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_address_book_create(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_alexaforbusiness_address_book_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness create-address-book --name $name "$@"
}