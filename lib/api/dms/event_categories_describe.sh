######################################################################
#<
#
# Function:
#      = p6_aws_dms_event_categories_describe()
#
#
#
#>
######################################################################
p6_aws_dms_event_categories_describe() {

    p6_run_read_cmd aws dms describe-event-categories "$@"
}