######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_email_email_identity_delete(email_identity)
#
#  Args:
#	email_identity - 
#
#>
######################################################################
p6_aws_pinpoint_email_email_identity_delete() {
    local email_identity="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-email delete-email-identity --email-identity $email_identity "$@"
}