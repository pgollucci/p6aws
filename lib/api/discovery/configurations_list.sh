p6_aws_discovery_configurations_list() {
    local configuration_type="$1"
    shift 1

    p6_run_read_cmd aws discovery list-configurations --configuration-type $configuration_type "$@"
}
