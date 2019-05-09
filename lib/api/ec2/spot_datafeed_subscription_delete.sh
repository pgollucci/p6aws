p6_aws_ec2_spot_datafeed_subscription_delete() {

    p6_log_or_run aws ec2 delete-spot-datafeed-subscription "$@"
}
