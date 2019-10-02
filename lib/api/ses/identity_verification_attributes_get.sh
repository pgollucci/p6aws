######################################################################
#<
#
# Function:
#	p6_aws_ses_identity_verification_attributes_get(identities)
#
#  Args:
#	identities - 
#
#>
######################################################################
p6_aws_ses_identity_verification_attributes_get() {
    local identities="$1"
    shift 1

    p6_run_read_cmd aws ses get-identity-verification-attributes --identities $identities "$@"
}