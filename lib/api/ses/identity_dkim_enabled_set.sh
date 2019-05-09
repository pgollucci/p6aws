p6_aws_ses_identity_dkim_enabled_set() {
    local identity="$1"
    local dkim_enabled="$2"
    shift 2

    p6_log_or_run aws ses set-identity-dkim-enabled --identity $identity --dkim-enabled $dkim_enabled "$@"
}
