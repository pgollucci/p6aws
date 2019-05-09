p6_aws_organizations_handshake_cancel() {
    local handshake_id="$1"
    shift 1

    p6_log_or_run aws organizations cancel-handshake --handshake-id $handshake_id "$@"
}
