######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_event_selectors_get(trail_name)
#
#  Args:
#	trail_name - 
#
#>
######################################################################
p6_aws_cloudtrail_event_selectors_get() {
    local trail_name="$1"
    shift 1

    p6_run_read_cmd aws cloudtrail get-event-selectors --trail-name $trail_name "$@"
}