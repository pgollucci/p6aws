######################################################################
#<
#
# Function:
#      = p6_aws_groundstation_contact_cancel(contact_id)
#
# Arg(s):
#    contact_id - 
#
#
#>
######################################################################
p6_aws_groundstation_contact_cancel() {
    local contact_id="$1"
    shift 1

    p6_run_write_cmd aws groundstation cancel-contact --contact-id $contact_id "$@"
}