######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_matchmaking_rule_set_delete(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_gamelift_matchmaking_rule_set_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws gamelift delete-matchmaking-rule-set --name $name "$@"
}