######################################################################
#<
#
# Function:
#      = p6_aws_ec2_network_interface_attribute_describe(network_interface_id)
#
# Arg(s):
#    network_interface_id - 
#
#
#>
######################################################################
p6_aws_ec2_network_interface_attribute_describe() {
    local network_interface_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 describe-network-interface-attribute --network-interface-id $network_interface_id "$@"
}