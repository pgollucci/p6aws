######################################################################
#<
#
# Function:
#      = p6_aws_waf_rule_group_update(rule_group_id, updates, change_token)
#
# Arg(s):
#    rule_group_id - 
#    updates - 
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_rule_group_update() {
    local rule_group_id="$1"
    local updates="$2"
    local change_token="$3"
    shift 3

    p6_run_write_cmd aws waf update-rule-group --rule-group-id $rule_group_id --updates $updates --change-token $change_token "$@"
}