######################################################################
#<
#
# Function:
#      = p6_aws_waf_geo_match_sets_list()
#
#
#
#>
######################################################################
p6_aws_waf_geo_match_sets_list() {

    p6_run_read_cmd aws waf list-geo-match-sets "$@"
}