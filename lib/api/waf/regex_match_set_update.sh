######################################################################
#<
#
# Function:
#      = p6_aws_waf_regex_match_set_update(regex_match_set_id, updates, change_token)
#
# Arg(s):
#    regex_match_set_id - 
#    updates - 
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_regex_match_set_update() {
    local regex_match_set_id="$1"
    local updates="$2"
    local change_token="$3"
    shift 3

    p6_run_write_cmd aws waf update-regex-match-set --regex-match-set-id $regex_match_set_id --updates $updates --change-token $change_token "$@"
}