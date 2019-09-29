######################################################################
#<
#
# Function:
#      = p6_aws_cognito_sync_bulk_publish_details_get(identity_pool_id)
#
# Arg(s):
#    identity_pool_id - 
#
#
#>
######################################################################
p6_aws_cognito_sync_bulk_publish_details_get() {
    local identity_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-sync get-bulk-publish-details --identity-pool-id $identity_pool_id "$@"
}