p6_aws_ec2_address_to_classic_restore() {
    local public_ip="$1"
    shift 1

    p6_log_or_run aws ec2 restore-address-to-classic --public-ip $public_ip "$@"
}
