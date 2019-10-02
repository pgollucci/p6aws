######################################################################
#<
#
# Function:
#	p6_aws_dax_events_describe()
#
#>
######################################################################
p6_aws_dax_events_describe() {

    p6_run_read_cmd aws dax describe-events "$@"
}