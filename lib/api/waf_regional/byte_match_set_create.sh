p6_aws_waf_regional_byte_match_set_create() {
    local name="$1"
    local change_token="$2"
    shift 2

    p6_log_or_run aws waf-regional create-byte-match-set --name $name --change-token $change_token "$@"
}
