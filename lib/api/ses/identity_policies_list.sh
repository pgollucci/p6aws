######################################################################
#<
#
# Function:
#	p6_aws_ses_identity_policies_list(identity)
#
#  Args:
#	identity - 
#
#>
######################################################################
p6_aws_ses_identity_policies_list() {
    local identity="$1"
    shift 1

    p6_run_read_cmd aws ses list-identity-policies --identity $identity "$@"
}