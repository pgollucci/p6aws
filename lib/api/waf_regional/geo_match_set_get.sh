p6_aws_waf_regional_geo_match_set_get() {
    local geo_match_set_id="$1"
    shift 1

    p6_log_and_run aws waf-regional get-geo-match-set --geo-match-set-id $geo_match_set_id "$@"
}
