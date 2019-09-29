######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_address_book_get(address_book_arn)
#
# Arg(s):
#    address_book_arn - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_address_book_get() {
    local address_book_arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness get-address-book --address-book-arn $address_book_arn "$@"
}