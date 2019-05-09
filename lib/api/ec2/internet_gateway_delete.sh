p6_aws_ec2_internet_gateway_delete() {
    local internet_gateway_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-internet-gateway --internet-gateway-id $internet_gateway_id "$@"
}
