######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_matchmaking_rule_sets_describe()
#
#
#
#>
######################################################################
p6_aws_gamelift_matchmaking_rule_sets_describe() {

    p6_run_read_cmd aws gamelift describe-matchmaking-rule-sets "$@"
}