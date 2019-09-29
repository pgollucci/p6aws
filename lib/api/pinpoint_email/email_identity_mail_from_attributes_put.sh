######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_email_identity_mail_from_attributes_put(email_identity)
#
# Arg(s):
#    email_identity - 
#
#
#>
######################################################################
p6_aws_pinpoint_email_email_identity_mail_from_attributes_put() {
    local email_identity="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-email put-email-identity-mail-from-attributes --email-identity $email_identity "$@"
}