######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpn_gateway_create(type)
#
# Arg(s):
#    type - 
#
#
#>
######################################################################
p6_aws_ec2_vpn_gateway_create() {
    local type="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-vpn-gateway --type $type "$@"
}