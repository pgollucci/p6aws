p6_aws_ses_custom_verification_email_template_update() {
    local template_name="$1"
    shift 1

    p6_run_write_cmd aws ses update-custom-verification-email-template --template-name $template_name "$@"
}
