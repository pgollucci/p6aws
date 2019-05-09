p6_aws_waf_geo_match_set_create() {
    local name="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf create-geo-match-set --name $name --change-token $change_token "$@"
}
