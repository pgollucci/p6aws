######################################################################
#<
#
# Function:
#	p6_aws_health_events_describe()
#
#>
######################################################################
p6_aws_health_events_describe() {

    p6_run_read_cmd aws health describe-events "$@"
}