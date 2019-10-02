######################################################################
#<
#
# Function:
#	p6_aws_personalize_event_tracker_describe(event_tracker_arn)
#
#  Args:
#	event_tracker_arn - 
#
#>
######################################################################
p6_aws_personalize_event_tracker_describe() {
    local event_tracker_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-event-tracker --event-tracker-arn $event_tracker_arn "$@"
}