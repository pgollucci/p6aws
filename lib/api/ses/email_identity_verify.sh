######################################################################
#<
#
# Function:
#      = p6_aws_ses_email_identity_verify(email_address)
#
# Arg(s):
#    email_address - 
#
#
#>
######################################################################
p6_aws_ses_email_identity_verify() {
    local email_address="$1"
    shift 1

    p6_run_write_cmd aws ses verify-email-identity --email-address $email_address "$@"
}