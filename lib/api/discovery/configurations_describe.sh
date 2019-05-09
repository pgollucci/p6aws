p6_aws_discovery_configurations_describe() {
    local configuration_ids="$1"
    shift 1

    p6_run_read_cmd aws discovery describe-configurations --configuration-ids $configuration_ids "$@"
}
