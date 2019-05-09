p6_aws_pinpoint_user_endpoints_delete() {
    local application_id="$1"
    local user_id="$2"
    shift 2

    p6_log_or_run aws pinpoint delete-user-endpoints --application-id $application_id --user-id $user_id "$@"
}
