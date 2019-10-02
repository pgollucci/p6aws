######################################################################
#<
#
# Function:
#	p6_aws_ec2_spot_price_history_describe()
#
#>
######################################################################
p6_aws_ec2_spot_price_history_describe() {

    p6_run_read_cmd aws ec2 describe-spot-price-history "$@"
}