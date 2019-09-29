######################################################################
#<
#
# Function:
#      = p6_aws_ec2_network_acl_entry_create(egress, network_acl_id, protocol, rule_action, rule_number)
#
# Arg(s):
#    egress - 
#    network_acl_id - 
#    protocol - 
#    rule_action - 
#    rule_number - 
#
#
#>
######################################################################
p6_aws_ec2_network_acl_entry_create() {
    local egress="$1"
    local network_acl_id="$2"
    local protocol="$3"
    local rule_action="$4"
    local rule_number="$5"
    shift 5

    p6_run_write_cmd aws ec2 create-network-acl-entry --egress $egress --network-acl-id $network_acl_id --protocol $protocol --rule-action $rule_action --rule-number $rule_number "$@"
}