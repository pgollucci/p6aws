p6_aws_waf_regex_pattern_set_get() {
    local regex_pattern_set_id="$1"
    shift 1

    p6_log_and_run aws waf get-regex-pattern-set --regex-pattern-set-id $regex_pattern_set_id "$@"
}
