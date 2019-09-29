######################################################################
#<
#
# Function:
#      = p6_aws_connect_outbound_voice_contact_start(destination_phone_number, contact_flow_id, instance_id)
#
# Arg(s):
#    destination_phone_number - 
#    contact_flow_id - 
#    instance_id - 
#
#
#>
######################################################################
p6_aws_connect_outbound_voice_contact_start() {
    local destination_phone_number="$1"
    local contact_flow_id="$2"
    local instance_id="$3"
    shift 3

    p6_run_write_cmd aws connect start-outbound-voice-contact --destination-phone-number $destination_phone_number --contact-flow-id $contact_flow_id --instance-id $instance_id "$@"
}