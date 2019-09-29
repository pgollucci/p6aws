######################################################################
#<
#
# Function:
#      = p6_aws_cognito_identity_developer_identities_merge(source_user_identifier, destination_user_identifier, developer_provider_name, identity_pool_id)
#
# Arg(s):
#    source_user_identifier - 
#    destination_user_identifier - 
#    developer_provider_name - 
#    identity_pool_id - 
#
#
#>
######################################################################
p6_aws_cognito_identity_developer_identities_merge() {
    local source_user_identifier="$1"
    local destination_user_identifier="$2"
    local developer_provider_name="$3"
    local identity_pool_id="$4"
    shift 4

    p6_run_write_cmd aws cognito-identity merge-developer-identities --source-user-identifier $source_user_identifier --destination-user-identifier $destination_user_identifier --developer-provider-name $developer_provider_name --identity-pool-id $identity_pool_id "$@"
}