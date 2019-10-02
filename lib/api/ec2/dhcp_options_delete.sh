######################################################################
#<
#
# Function:
#	p6_aws_ec2_dhcp_options_delete(dhcp_options_id)
#
#  Args:
#	dhcp_options_id - 
#
#>
######################################################################
p6_aws_ec2_dhcp_options_delete() {
    local dhcp_options_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-dhcp-options --dhcp-options-id $dhcp_options_id "$@"
}