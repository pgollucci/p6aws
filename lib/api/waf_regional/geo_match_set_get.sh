######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_geo_match_set_get(geo_match_set_id)
#
# Arg(s):
#    geo_match_set_id - 
#
#
#>
######################################################################
p6_aws_waf_regional_geo_match_set_get() {
    local geo_match_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf-regional get-geo-match-set --geo-match-set-id $geo_match_set_id "$@"
}