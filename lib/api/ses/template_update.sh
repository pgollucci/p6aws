p6_aws_ses_template_update() {
    local template="$1"
    shift 1

    p6_log_or_run aws ses update-template --template $template "$@"
}
