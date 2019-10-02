######################################################################
#<
#
# Function:
#	p6_aws_ec2_spot_datafeed_subscription_delete()
#
#>
######################################################################
p6_aws_ec2_spot_datafeed_subscription_delete() {

    p6_run_write_cmd aws ec2 delete-spot-datafeed-subscription "$@"
}