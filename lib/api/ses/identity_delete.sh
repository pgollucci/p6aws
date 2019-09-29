######################################################################
#<
#
# Function:
#      = p6_aws_ses_identity_delete(identity)
#
# Arg(s):
#    identity - 
#
#
#>
######################################################################
p6_aws_ses_identity_delete() {
    local identity="$1"
    shift 1

    p6_run_write_cmd aws ses delete-identity --identity $identity "$@"
}