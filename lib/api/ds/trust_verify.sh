p6_aws_ds_trust_verify() {
    local trust_id="$1"
    shift 1

    p6_log_or_run aws ds verify-trust --trust-id $trust_id "$@"
}
