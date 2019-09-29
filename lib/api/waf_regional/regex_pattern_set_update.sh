######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_regex_pattern_set_update(regex_pattern_set_id, updates, change_token)
#
# Arg(s):
#    regex_pattern_set_id - 
#    updates - 
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_regional_regex_pattern_set_update() {
    local regex_pattern_set_id="$1"
    local updates="$2"
    local change_token="$3"
    shift 3

    p6_run_write_cmd aws waf-regional update-regex-pattern-set --regex-pattern-set-id $regex_pattern_set_id --updates $updates --change-token $change_token "$@"
}