p6_aws_mq_configuration_describe() {
    local configuration_id="$1"
    shift 1

    p6_run_read_cmd aws mq describe-configuration --configuration-id $configuration_id "$@"
}
