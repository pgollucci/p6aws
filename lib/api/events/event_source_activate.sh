######################################################################
#<
#
# Function:
#	p6_aws_events_event_source_activate(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_events_event_source_activate() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws events activate-event-source --name $name "$@"
}