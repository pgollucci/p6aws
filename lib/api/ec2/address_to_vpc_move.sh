######################################################################
#<
#
# Function:
#      = p6_aws_ec2_address_to_vpc_move(public_ip)
#
# Arg(s):
#    public_ip - 
#
#
#>
######################################################################
p6_aws_ec2_address_to_vpc_move() {
    local public_ip="$1"
    shift 1

    p6_run_write_cmd aws ec2 move-address-to-vpc --public-ip $public_ip "$@"
}