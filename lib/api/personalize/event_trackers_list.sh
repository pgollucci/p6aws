######################################################################
#<
#
# Function:
#      = p6_aws_personalize_event_trackers_list()
#
#
#
#>
######################################################################
p6_aws_personalize_event_trackers_list() {

    p6_run_read_cmd aws personalize list-event-trackers "$@"
}