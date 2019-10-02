######################################################################
#<
#
# Function:
#	p6_aws_rds_event_categories_describe()
#
#>
######################################################################
p6_aws_rds_event_categories_describe() {

    p6_run_read_cmd aws rds describe-event-categories "$@"
}