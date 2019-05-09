p6_aws_waf_geo_match_set_get() {
    local geo_match_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf get-geo-match-set --geo-match-set-id $geo_match_set_id "$@"
}
