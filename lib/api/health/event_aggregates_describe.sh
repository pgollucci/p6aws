######################################################################
#<
#
# Function:
#	p6_aws_health_event_aggregates_describe(aggregate_field)
#
#  Args:
#	aggregate_field - 
#
#>
######################################################################
p6_aws_health_event_aggregates_describe() {
    local aggregate_field="$1"
    shift 1

    p6_run_read_cmd aws health describe-event-aggregates --aggregate-field $aggregate_field "$@"
}