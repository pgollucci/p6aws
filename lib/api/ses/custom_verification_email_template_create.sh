p6_aws_ses_custom_verification_email_template_create() {
    local template_name="$1"
    local from_email_address="$2"
    local template_subject="$3"
    local template_content="$4"
    local success_redirection_url="$5"
    local failure_redirection_url="$6"
    shift 6

    p6_log_or_run aws ses create-custom-verification-email-template --template-name $template_name --from-email-address $from_email_address --template-subject $template_subject --template-content $template_content --success-redirection-url $success_redirection_url --failure-redirection-url $failure_redirection_url "$@"
}
