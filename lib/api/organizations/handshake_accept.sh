p6_aws_organizations_handshake_accept() {
    local handshake_id="$1"
    shift 1

    p6_log_or_run aws organizations accept-handshake --handshake-id $handshake_id "$@"
}
