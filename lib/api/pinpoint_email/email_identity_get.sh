######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_email_email_identity_get(email_identity)
#
#  Args:
#	email_identity - 
#
#>
######################################################################
p6_aws_pinpoint_email_email_identity_get() {
    local email_identity="$1"
    shift 1

    p6_run_read_cmd aws pinpoint-email get-email-identity --email-identity $email_identity "$@"
}