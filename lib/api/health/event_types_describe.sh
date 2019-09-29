######################################################################
#<
#
# Function:
#      = p6_aws_health_event_types_describe()
#
#
#
#>
######################################################################
p6_aws_health_event_types_describe() {

    p6_run_read_cmd aws health describe-event-types "$@"
}