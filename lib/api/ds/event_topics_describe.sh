######################################################################
#<
#
# Function:
#      = p6_aws_ds_event_topics_describe()
#
#
#
#>
######################################################################
p6_aws_ds_event_topics_describe() {

    p6_run_read_cmd aws ds describe-event-topics "$@"
}