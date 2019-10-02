######################################################################
#<
#
# Function:
#	p6_aws_ec2_moving_addresses_describe()
#
#>
######################################################################
p6_aws_ec2_moving_addresses_describe() {

    p6_run_read_cmd aws ec2 describe-moving-addresses "$@"
}