######################################################################
#<
#
# Function:
#	p6_aws_personalize_events_events_put(tracking_id, session_id, event_list)
#
#  Args:
#	tracking_id - 
#	session_id - 
#	event_list - 
#
#>
######################################################################
p6_aws_personalize_events_events_put() {
    local tracking_id="$1"
    local session_id="$2"
    local event_list="$3"
    shift 3

    p6_run_write_cmd aws personalize-events put-events --tracking-id $tracking_id --session-id $session_id --event-list $event_list "$@"
}