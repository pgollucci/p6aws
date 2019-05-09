p6_aws_worklink_company_network_configuration_describe() {
    local fleet_arn="$1"
    shift 1

    p6_run_read_cmd aws worklink describe-company-network-configuration --fleet-arn $fleet_arn "$@"
}
