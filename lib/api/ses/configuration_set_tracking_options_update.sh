p6_aws_ses_configuration_set_tracking_options_update() {
    local configuration_set_name="$1"
    local tracking_options="$2"
    shift 2

    p6_log_or_run aws ses update-configuration-set-tracking-options --configuration-set-name $configuration_set_name --tracking-options $tracking_options "$@"
}
