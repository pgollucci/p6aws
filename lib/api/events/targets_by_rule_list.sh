######################################################################
#<
#
# Function:
#      = p6_aws_events_targets_by_rule_list(rule)
#
# Arg(s):
#    rule - 
#
#
#>
######################################################################
p6_aws_events_targets_by_rule_list() {
    local rule="$1"
    shift 1

    p6_run_read_cmd aws events list-targets-by-rule --rule $rule "$@"
}