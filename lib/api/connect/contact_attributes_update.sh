######################################################################
#<
#
# Function:
#      = p6_aws_connect_contact_attributes_update(initial_contact_id, instance_id, attributes)
#
# Arg(s):
#    initial_contact_id - 
#    instance_id - 
#    attributes - 
#
#
#>
######################################################################
p6_aws_connect_contact_attributes_update() {
    local initial_contact_id="$1"
    local instance_id="$2"
    local attributes="$3"
    shift 3

    p6_run_write_cmd aws connect update-contact-attributes --initial-contact-id $initial_contact_id --instance-id $instance_id --attributes $attributes "$@"
}