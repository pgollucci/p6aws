######################################################################
#<
#
# Function:
#	p6_aws_redshift_event_categories_describe()
#
#>
######################################################################
p6_aws_redshift_event_categories_describe() {

    p6_run_read_cmd aws redshift describe-event-categories "$@"
}