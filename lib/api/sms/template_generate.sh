p6_aws_sms_template_generate() {

    p6_run_write_cmd aws sms generate-template "$@"
}
