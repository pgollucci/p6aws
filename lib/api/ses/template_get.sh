p6_aws_ses_template_get() {
    local template_name="$1"
    shift 1

    p6_log_and_run aws ses get-template --template-name $template_name "$@"
}
