######################################################################
#<
#
# Function:
#      = p6_aws_events_rule_names_by_target_list(target_arn)
#
# Arg(s):
#    target_arn - 
#
#
#>
######################################################################
p6_aws_events_rule_names_by_target_list() {
    local target_arn="$1"
    shift 1

    p6_run_read_cmd aws events list-rule-names-by-target --target-arn $target_arn "$@"
}