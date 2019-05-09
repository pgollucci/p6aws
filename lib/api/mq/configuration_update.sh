p6_aws_mq_configuration_update() {
    local configuration_id="$1"
    shift 1

    p6_log_or_run aws mq update-configuration --configuration-id $configuration_id "$@"
}
