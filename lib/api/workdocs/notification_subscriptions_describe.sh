p6_aws_workdocs_notification_subscriptions_describe() {
    local organization_id="$1"
    shift 1

    p6_run_read_cmd aws workdocs describe-notification-subscriptions --organization-id $organization_id "$@"
}
