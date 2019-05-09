p6_aws_waf_byte_match_set_delete() {
    local byte_match_set_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf delete-byte-match-set --byte-match-set-id $byte_match_set_id --change-token $change_token "$@"
}
