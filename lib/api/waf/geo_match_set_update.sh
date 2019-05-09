p6_aws_waf_geo_match_set_update() {
    local geo_match_set_id="$1"
    local change_token="$2"
    local updates="$3"
    shift 3

    p6_run_write_cmd aws waf update-geo-match-set --geo-match-set-id $geo_match_set_id --change-token $change_token --updates $updates "$@"
}
