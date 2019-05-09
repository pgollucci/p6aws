p6_aws_snowball_address_create() {
    local address="$1"
    shift 1

    p6_log_or_run aws snowball create-address --address $address "$@"
}
