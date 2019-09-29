######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_matchmaking_rule_set_create(name, rule_set_body)
#
# Arg(s):
#    name - 
#    rule_set_body - 
#
#
#>
######################################################################
p6_aws_gamelift_matchmaking_rule_set_create() {
    local name="$1"
    local rule_set_body="$2"
    shift 2

    p6_run_write_cmd aws gamelift create-matchmaking-rule-set --name $name --rule-set-body $rule_set_body "$@"
}