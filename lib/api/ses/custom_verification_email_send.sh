######################################################################
#<
#
# Function:
#      = p6_aws_ses_custom_verification_email_send(email_address, template_name)
#
# Arg(s):
#    email_address - 
#    template_name - 
#
#
#>
######################################################################
p6_aws_ses_custom_verification_email_send() {
    local email_address="$1"
    local template_name="$2"
    shift 2

    p6_run_write_cmd aws ses send-custom-verification-email --email-address $email_address --template-name $template_name "$@"
}