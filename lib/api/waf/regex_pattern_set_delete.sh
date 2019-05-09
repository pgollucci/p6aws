p6_aws_waf_regex_pattern_set_delete() {
    local regex_pattern_set_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf delete-regex-pattern-set --regex-pattern-set-id $regex_pattern_set_id --change-token $change_token "$@"
}
