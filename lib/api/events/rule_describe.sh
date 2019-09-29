######################################################################
#<
#
# Function:
#      = p6_aws_events_rule_describe(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_events_rule_describe() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws events describe-rule --name $name "$@"
}