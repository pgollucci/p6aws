######################################################################
#<
#
# Function:
#      = p6_aws_ec2_internet_gateway_attach(internet_gateway_id, vpc_id)
#
# Arg(s):
#    internet_gateway_id - 
#    vpc_id - 
#
#
#>
######################################################################
p6_aws_ec2_internet_gateway_attach() {
    local internet_gateway_id="$1"
    local vpc_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 attach-internet-gateway --internet-gateway-id $internet_gateway_id --vpc-id $vpc_id "$@"
}