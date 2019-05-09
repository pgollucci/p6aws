p6_aws_worklink_company_network_configuration_update() {
    local fleet_arn="$1"
    local vpc_id="$2"
    local subnet_ids="$3"
    local security_group_ids="$4"
    shift 4

    p6_run_write_cmd aws worklink update-company-network-configuration --fleet-arn $fleet_arn --vpc-id $vpc_id --subnet-ids $subnet_ids --security-group-ids $security_group_ids "$@"
}
