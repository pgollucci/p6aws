p6_aws_ses_render_template_test() {
    local template_name="$1"
    local template_data="$2"
    shift 2

    p6_log_or_run aws ses test-render-template --template-name $template_name --template-data $template_data "$@"
}
