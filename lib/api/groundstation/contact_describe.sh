######################################################################
#<
#
# Function:
#	p6_aws_groundstation_contact_describe(contact_id)
#
#  Args:
#	contact_id - 
#
#>
######################################################################
p6_aws_groundstation_contact_describe() {
    local contact_id="$1"
    shift 1

    p6_run_read_cmd aws groundstation describe-contact --contact-id $contact_id "$@"
}