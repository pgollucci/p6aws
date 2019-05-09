p6_aws_alexaforbusiness_contact_from_address_book_disassociate() {
    local contact_arn="$1"
    local address_book_arn="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness disassociate-contact-from-address-book --contact-arn $contact_arn --address-book-arn $address_book_arn "$@"
}
