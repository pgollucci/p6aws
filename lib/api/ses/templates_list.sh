p6_aws_ses_templates_list() {

    p6_run_read_cmd aws ses list-templates "$@"
}
