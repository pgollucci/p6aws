p6_aws_organizations_handshake_decline() {
    local handshake_id="$1"
    shift 1

    p6_log_or_run aws organizations decline-handshake --handshake-id $handshake_id "$@"
}
