######################################################################
#<
#
# Function:
#	p6_aws_ec2_network_interface_create(subnet_id)
#
#  Args:
#	subnet_id - 
#
#>
######################################################################
p6_aws_ec2_network_interface_create() {
    local subnet_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-network-interface --subnet-id $subnet_id "$@"
}