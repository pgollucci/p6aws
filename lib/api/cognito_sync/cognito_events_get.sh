######################################################################
#<
#
# Function:
#      = p6_aws_cognito_sync_cognito_events_get(identity_pool_id)
#
# Arg(s):
#    identity_pool_id - 
#
#
#>
######################################################################
p6_aws_cognito_sync_cognito_events_get() {
    local identity_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-sync get-cognito-events --identity-pool-id $identity_pool_id "$@"
}