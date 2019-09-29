######################################################################
#<
#
# Function:
#      = p6_aws_cloudwatch_alarm_state_set(alarm_name, state_value, state_reason)
#
# Arg(s):
#    alarm_name - 
#    state_value - 
#    state_reason - 
#
#
#>
######################################################################
p6_aws_cloudwatch_alarm_state_set() {
    local alarm_name="$1"
    local state_value="$2"
    local state_reason="$3"
    shift 3

    p6_run_write_cmd aws cloudwatch set-alarm-state --alarm-name $alarm_name --state-value $state_value --state-reason $state_reason "$@"
}