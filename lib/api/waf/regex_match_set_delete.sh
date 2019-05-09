p6_aws_waf_regex_match_set_delete() {
    local regex_match_set_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf delete-regex-match-set --regex-match-set-id $regex_match_set_id --change-token $change_token "$@"
}
