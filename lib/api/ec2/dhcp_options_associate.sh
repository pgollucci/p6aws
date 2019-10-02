######################################################################
#<
#
# Function:
#	p6_aws_ec2_dhcp_options_associate(dhcp_options_id, vpc_id)
#
#  Args:
#	dhcp_options_id - 
#	vpc_id - 
#
#>
######################################################################
p6_aws_ec2_dhcp_options_associate() {
    local dhcp_options_id="$1"
    local vpc_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 associate-dhcp-options --dhcp-options-id $dhcp_options_id --vpc-id $vpc_id "$@"
}