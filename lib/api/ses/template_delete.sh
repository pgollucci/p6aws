p6_aws_ses_template_delete() {
    local template_name="$1"
    shift 1

    p6_log_or_run aws ses delete-template --template-name $template_name "$@"
}
