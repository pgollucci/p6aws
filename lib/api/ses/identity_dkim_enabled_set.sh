######################################################################
#<
#
# Function:
#	p6_aws_ses_identity_dkim_enabled_set(identity, dkim_enabled)
#
#  Args:
#	identity - 
#	dkim_enabled - 
#
#>
######################################################################
p6_aws_ses_identity_dkim_enabled_set() {
    local identity="$1"
    local dkim_enabled="$2"
    shift 2

    p6_run_write_cmd aws ses set-identity-dkim-enabled --identity $identity --dkim-enabled $dkim_enabled "$@"
}