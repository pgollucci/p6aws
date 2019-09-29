######################################################################
#<
#
# Function:
#      = p6_aws_ec2_spot_datafeed_subscription_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_spot_datafeed_subscription_describe() {

    p6_run_read_cmd aws ec2 describe-spot-datafeed-subscription "$@"
}