######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_address_books_search()
#
#>
######################################################################
p6_aws_alexaforbusiness_address_books_search() {

    p6_run_write_cmd aws alexaforbusiness search-address-books "$@"
}