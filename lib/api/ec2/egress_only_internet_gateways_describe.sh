######################################################################
#<
#
# Function:
#      = p6_aws_ec2_egress_only_internet_gateways_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_egress_only_internet_gateways_describe() {

    p6_run_read_cmd aws ec2 describe-egress-only-internet-gateways "$@"
}