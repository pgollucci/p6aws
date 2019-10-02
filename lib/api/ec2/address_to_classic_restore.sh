######################################################################
#<
#
# Function:
#	p6_aws_ec2_address_to_classic_restore(public_ip)
#
#  Args:
#	public_ip - 
#
#>
######################################################################
p6_aws_ec2_address_to_classic_restore() {
    local public_ip="$1"
    shift 1

    p6_run_write_cmd aws ec2 restore-address-to-classic --public-ip $public_ip "$@"
}