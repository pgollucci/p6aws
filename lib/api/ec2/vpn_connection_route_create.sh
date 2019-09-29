######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpn_connection_route_create(destination_cidr_block, vpn_connection_id)
#
# Arg(s):
#    destination_cidr_block - 
#    vpn_connection_id - 
#
#
#>
######################################################################
p6_aws_ec2_vpn_connection_route_create() {
    local destination_cidr_block="$1"
    local vpn_connection_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 create-vpn-connection-route --destination-cidr-block $destination_cidr_block --vpn-connection-id $vpn_connection_id "$@"
}