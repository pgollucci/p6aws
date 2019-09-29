######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_contact_with_address_book_associate(contact_arn, address_book_arn)
#
# Arg(s):
#    contact_arn - 
#    address_book_arn - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_contact_with_address_book_associate() {
    local contact_arn="$1"
    local address_book_arn="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness associate-contact-with-address-book --contact-arn $contact_arn --address-book-arn $address_book_arn "$@"
}