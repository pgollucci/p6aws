######################################################################
#<
#
# Function:
#	p6_aws_ec2_nat_gateways_describe()
#
#>
######################################################################
p6_aws_ec2_nat_gateways_describe() {

    p6_run_read_cmd aws ec2 describe-nat-gateways "$@"
}