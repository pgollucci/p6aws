p6_aws_ec2_customer_gateway_delete() {
    local customer_gateway_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-customer-gateway --customer-gateway-id $customer_gateway_id "$@"
}
