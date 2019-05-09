p6_aws_ses_configuration_set_create() {
    local configuration_set="$1"
    shift 1

    p6_log_or_run aws ses create-configuration-set --configuration-set $configuration_set "$@"
}
