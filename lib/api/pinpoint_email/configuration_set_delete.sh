p6_aws_pinpoint_email_configuration_set_delete() {
    local configuration_set_name="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-email delete-configuration-set --configuration-set-name $configuration_set_name "$@"
}
