p6_aws_ec2_spot_datafeed_subscription_create() {
    local bucket="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-spot-datafeed-subscription --bucket $bucket "$@"
}
