######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_address_book_delete(address_book_arn)
#
#  Args:
#	address_book_arn - 
#
#>
######################################################################
p6_aws_alexaforbusiness_address_book_delete() {
    local address_book_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness delete-address-book --address-book-arn $address_book_arn "$@"
}