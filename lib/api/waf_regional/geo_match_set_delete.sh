p6_aws_waf_regional_geo_match_set_delete() {
    local geo_match_set_id="$1"
    local change_token="$2"
    shift 2

    p6_log_or_run aws waf-regional delete-geo-match-set --geo-match-set-id $geo_match_set_id --change-token $change_token "$@"
}
