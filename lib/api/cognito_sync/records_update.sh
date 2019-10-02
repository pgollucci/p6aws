######################################################################
#<
#
# Function:
#	p6_aws_cognito_sync_records_update(identity_pool_id, identity_id, dataset_name, sync_session_token)
#
#  Args:
#	identity_pool_id - 
#	identity_id - 
#	dataset_name - 
#	sync_session_token - 
#
#>
######################################################################
p6_aws_cognito_sync_records_update() {
    local identity_pool_id="$1"
    local identity_id="$2"
    local dataset_name="$3"
    local sync_session_token="$4"
    shift 4

    p6_run_write_cmd aws cognito-sync update-records --identity-pool-id $identity_pool_id --identity-id $identity_id --dataset-name $dataset_name --sync-session-token $sync_session_token "$@"
}