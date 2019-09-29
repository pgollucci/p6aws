######################################################################
#<
#
# Function:
#      = p6_aws_events_event_pattern_test(event_pattern, event)
#
# Arg(s):
#    event_pattern - 
#    event - 
#
#
#>
######################################################################
p6_aws_events_event_pattern_test() {
    local event_pattern="$1"
    local event="$2"
    shift 2

    p6_run_write_cmd aws events test-event-pattern --event-pattern $event_pattern --event $event "$@"
}