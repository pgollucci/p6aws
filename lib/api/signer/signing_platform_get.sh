p6_aws_signer_signing_platform_get() {
    local platform_id="$1"
    shift 1

    p6_log_and_run aws signer get-signing-platform --platform-id $platform_id "$@"
}
