p6_aws_ec2_scheduled_instances_purchase() {
    local purchase_requests="$1"
    shift 1

    p6_log_or_run aws ec2 purchase-scheduled-instances --purchase-requests $purchase_requests "$@"
}
