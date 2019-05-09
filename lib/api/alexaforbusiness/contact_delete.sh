p6_aws_alexaforbusiness_contact_delete() {
    local contact_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness delete-contact --contact-arn $contact_arn "$@"
}
