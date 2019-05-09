p6_aws_waf_regex_match_set_get() {
    local regex_match_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf get-regex-match-set --regex-match-set-id $regex_match_set_id "$@"
}
