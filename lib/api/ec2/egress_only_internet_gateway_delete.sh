######################################################################
#<
#
# Function:
#	p6_aws_ec2_egress_only_internet_gateway_delete(egress_only_internet_gateway_id)
#
#  Args:
#	egress_only_internet_gateway_id - 
#
#>
######################################################################
p6_aws_ec2_egress_only_internet_gateway_delete() {
    local egress_only_internet_gateway_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-egress-only-internet-gateway --egress-only-internet-gateway-id $egress_only_internet_gateway_id "$@"
}