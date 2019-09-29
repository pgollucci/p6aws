######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_contact_get(contact_arn)
#
# Arg(s):
#    contact_arn - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_contact_get() {
    local contact_arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness get-contact --contact-arn $contact_arn "$@"
}