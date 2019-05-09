p6_aws_ses_configuration_set_tracking_options_delete() {
    local configuration_set_name="$1"
    shift 1

    p6_log_or_run aws ses delete-configuration-set-tracking-options --configuration-set-name $configuration_set_name "$@"
}
