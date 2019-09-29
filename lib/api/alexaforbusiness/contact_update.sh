######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_contact_update(contact_arn)
#
# Arg(s):
#    contact_arn - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_contact_update() {
    local contact_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness update-contact --contact-arn $contact_arn "$@"
}