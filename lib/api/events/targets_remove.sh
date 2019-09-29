######################################################################
#<
#
# Function:
#      = p6_aws_events_targets_remove(rule, ids)
#
# Arg(s):
#    rule - 
#    ids - 
#
#
#>
######################################################################
p6_aws_events_targets_remove() {
    local rule="$1"
    local ids="$2"
    shift 2

    p6_run_read_cmd aws events remove-targets --rule $rule --ids $ids "$@"
}