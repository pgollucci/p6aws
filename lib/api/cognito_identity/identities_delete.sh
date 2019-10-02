######################################################################
#<
#
# Function:
#	p6_aws_cognito_identity_identities_delete(identity_ids_to_delete)
#
#  Args:
#	identity_ids_to_delete - 
#
#>
######################################################################
p6_aws_cognito_identity_identities_delete() {
    local identity_ids_to_delete="$1"
    shift 1

    p6_run_write_cmd aws cognito-identity delete-identities --identity-ids-to-delete $identity_ids_to_delete "$@"
}