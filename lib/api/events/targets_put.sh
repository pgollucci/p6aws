######################################################################
#<
#
# Function:
#	p6_aws_events_targets_put(rule, targets)
#
#  Args:
#	rule - 
#	targets - 
#
#>
######################################################################
p6_aws_events_targets_put() {
    local rule="$1"
    local targets="$2"
    shift 2

    p6_run_read_cmd aws events put-targets --rule $rule --targets $targets "$@"
}