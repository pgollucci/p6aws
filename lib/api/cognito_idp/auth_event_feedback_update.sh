######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_auth_event_feedback_update(user_pool_id, username, event_id, feedback_token, feedback_value)
#
#  Args:
#	user_pool_id - 
#	username - 
#	event_id - 
#	feedback_token - 
#	feedback_value - 
#
#>
######################################################################
p6_aws_cognito_idp_auth_event_feedback_update() {
    local user_pool_id="$1"
    local username="$2"
    local event_id="$3"
    local feedback_token="$4"
    local feedback_value="$5"
    shift 5

    p6_run_write_cmd aws cognito-idp update-auth-event-feedback --user-pool-id $user_pool_id --username $username --event-id $event_id --feedback-token $feedback_token --feedback-value $feedback_value "$@"
}