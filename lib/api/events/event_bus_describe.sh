######################################################################
#<
#
# Function:
#      = p6_aws_events_event_bus_describe()
#
#
#
#>
######################################################################
p6_aws_events_event_bus_describe() {

    p6_run_read_cmd aws events describe-event-bus "$@"
}