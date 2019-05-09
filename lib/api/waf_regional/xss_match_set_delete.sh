p6_aws_waf_regional_xss_match_set_delete() {
    local xss_match_set_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf-regional delete-xss-match-set --xss-match-set-id $xss_match_set_id --change-token $change_token "$@"
}
