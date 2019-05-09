p6_aws_waf_xss_match_set_get() {
    local xss_match_set_id="$1"
    shift 1

    p6_log_and_run aws waf get-xss-match-set --xss-match-set-id $xss_match_set_id "$@"
}
