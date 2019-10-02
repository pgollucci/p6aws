######################################################################
#<
#
# Function:
#	p6_aws_cognito_identity_identity_unlink(identity_id, logins, logins_to_remove)
#
#  Args:
#	identity_id - 
#	logins - 
#	logins_to_remove - 
#
#>
######################################################################
p6_aws_cognito_identity_identity_unlink() {
    local identity_id="$1"
    local logins="$2"
    local logins_to_remove="$3"
    shift 3

    p6_run_write_cmd aws cognito-identity unlink-identity --identity-id $identity_id --logins $logins --logins-to-remove $logins_to_remove "$@"
}