p6_aws_ses_template_delete() {
    local template_name="$1"
    shift 1

    p6_run_write_cmd aws ses delete-template --template-name $template_name "$@"
}
