######################################################################
#<
#
# Function:
#      = p6_aws_waf_geo_match_set_delete(geo_match_set_id, change_token)
#
# Arg(s):
#    geo_match_set_id - 
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_geo_match_set_delete() {
    local geo_match_set_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf delete-geo-match-set --geo-match-set-id $geo_match_set_id --change-token $change_token "$@"
}