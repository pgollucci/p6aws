######################################################################
#<
#
# Function:
#      = p6_aws_ec2_egress_only_internet_gateway_create(vpc_id)
#
# Arg(s):
#    vpc_id - 
#
#
#>
######################################################################
p6_aws_ec2_egress_only_internet_gateway_create() {
    local vpc_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-egress-only-internet-gateway --vpc-id $vpc_id "$@"
}