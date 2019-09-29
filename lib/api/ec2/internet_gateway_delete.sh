######################################################################
#<
#
# Function:
#      = p6_aws_ec2_internet_gateway_delete(internet_gateway_id)
#
# Arg(s):
#    internet_gateway_id - 
#
#
#>
######################################################################
p6_aws_ec2_internet_gateway_delete() {
    local internet_gateway_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-internet-gateway --internet-gateway-id $internet_gateway_id "$@"
}