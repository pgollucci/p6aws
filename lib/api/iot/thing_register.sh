p6_aws_iot_thing_register() {
    local template_body="$1"
    shift 1

    p6_log_or_run aws iot register-thing --template-body $template_body "$@"
}
