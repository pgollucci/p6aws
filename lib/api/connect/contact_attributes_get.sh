######################################################################
#<
#
# Function:
#	p6_aws_connect_contact_attributes_get(instance_id, initial_contact_id)
#
#  Args:
#	instance_id - 
#	initial_contact_id - 
#
#>
######################################################################
p6_aws_connect_contact_attributes_get() {
    local instance_id="$1"
    local initial_contact_id="$2"
    shift 2

    p6_run_read_cmd aws connect get-contact-attributes --instance-id $instance_id --initial-contact-id $initial_contact_id "$@"
}