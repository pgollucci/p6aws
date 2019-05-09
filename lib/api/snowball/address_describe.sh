p6_aws_snowball_address_describe() {
    local address_id="$1"
    shift 1

    p6_log_and_run aws snowball describe-address --address-id $address_id "$@"
}
