######################################################################
#<
#
# Function:
#	p6_aws_cognito_sync_publish_bulk(identity_pool_id)
#
#  Args:
#	identity_pool_id - 
#
#>
######################################################################
p6_aws_cognito_sync_publish_bulk() {
    local identity_pool_id="$1"
    shift 1

    p6_run_write_cmd aws cognito-sync bulk-publish --identity-pool-id $identity_pool_id "$@"
}