p6_aws_ds_trust_delete() {
    local trust_id="$1"
    shift 1

    p6_log_or_run aws ds delete-trust --trust-id $trust_id "$@"
}
