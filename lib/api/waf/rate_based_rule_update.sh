######################################################################
#<
#
# Function:
#	p6_aws_waf_rate_based_rule_update(rule_id, change_token, updates, rate_limit)
#
#  Args:
#	rule_id - 
#	change_token - 
#	updates - 
#	rate_limit - 
#
#>
######################################################################
p6_aws_waf_rate_based_rule_update() {
    local rule_id="$1"
    local change_token="$2"
    local updates="$3"
    local rate_limit="$4"
    shift 4

    p6_run_write_cmd aws waf update-rate-based-rule --rule-id $rule_id --change-token $change_token --updates $updates --rate-limit $rate_limit "$@"
}