p6_aws_ses_configuration_set_reputation_metrics_enabled_update() {
    local configuration_set_name="$1"
    local enabled="$2"
    shift 2

    p6_log_or_run aws ses update-configuration-set-reputation-metrics-enabled --configuration-set-name $configuration_set_name --enabled $enabled "$@"
}
