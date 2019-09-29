######################################################################
#<
#
# Function:
#      = p6_aws_cognito_identity_developer_identity_unlink(identity_id, identity_pool_id, developer_provider_name, developer_user_identifier)
#
# Arg(s):
#    identity_id - 
#    identity_pool_id - 
#    developer_provider_name - 
#    developer_user_identifier - 
#
#
#>
######################################################################
p6_aws_cognito_identity_developer_identity_unlink() {
    local identity_id="$1"
    local identity_pool_id="$2"
    local developer_provider_name="$3"
    local developer_user_identifier="$4"
    shift 4

    p6_run_write_cmd aws cognito-identity unlink-developer-identity --identity-id $identity_id --identity-pool-id $identity_pool_id --developer-provider-name $developer_provider_name --developer-user-identifier $developer_user_identifier "$@"
}