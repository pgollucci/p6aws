######################################################################
#<
#
# Function:
#      = p6_aws_mturk_test_event_notification_send(notification, test_event_type)
#
# Arg(s):
#    notification - 
#    test_event_type - 
#
#
#>
######################################################################
p6_aws_mturk_test_event_notification_send() {
    local notification="$1"
    local test_event_type="$2"
    shift 2

    p6_run_write_cmd aws mturk send-test-event-notification --notification $notification --test-event-type $test_event_type "$@"
}