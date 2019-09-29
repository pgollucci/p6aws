######################################################################
#<
#
# Function:
#      = p6_aws_ec2_network_interface_permissions_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_network_interface_permissions_describe() {

    p6_run_read_cmd aws ec2 describe-network-interface-permissions "$@"
}