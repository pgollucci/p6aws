p6_aws_cognito_idp_update_auth_event_feedback_admin() {
    local user_pool_id="$1"
    local username="$2"
    local event_id="$3"
    local feedback_value="$4"
    shift 4

    p6_run_write_cmd aws cognito-idp admin-update-auth-event-feedback --user-pool-id $user_pool_id --username $username --event-id $event_id --feedback-value $feedback_value "$@"
}
