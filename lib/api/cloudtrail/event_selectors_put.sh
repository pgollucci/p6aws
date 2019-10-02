######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_event_selectors_put(trail_name, event_selectors)
#
#  Args:
#	trail_name - 
#	event_selectors - 
#
#>
######################################################################
p6_aws_cloudtrail_event_selectors_put() {
    local trail_name="$1"
    local event_selectors="$2"
    shift 2

    p6_run_write_cmd aws cloudtrail put-event-selectors --trail-name $trail_name --event-selectors $event_selectors "$@"
}