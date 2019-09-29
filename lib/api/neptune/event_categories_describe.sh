######################################################################
#<
#
# Function:
#      = p6_aws_neptune_event_categories_describe()
#
#
#
#>
######################################################################
p6_aws_neptune_event_categories_describe() {

    p6_run_read_cmd aws neptune describe-event-categories "$@"
}