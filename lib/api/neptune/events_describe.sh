######################################################################
#<
#
# Function:
#	p6_aws_neptune_events_describe()
#
#>
######################################################################
p6_aws_neptune_events_describe() {

    p6_run_read_cmd aws neptune describe-events "$@"
}