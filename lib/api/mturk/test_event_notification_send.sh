p6_aws_mturk_test_event_notification_send() {
    local notification="$1"
    local test_event_type="$2"
    shift 2

    p6_log_or_run aws mturk send-test-event-notification --notification $notification --test-event-type $test_event_type "$@"
}
