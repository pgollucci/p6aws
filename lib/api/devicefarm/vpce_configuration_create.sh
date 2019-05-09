p6_aws_devicefarm_vpce_configuration_create() {
    local vpce_configuration_name="$1"
    local vpce_service_name="$2"
    local service_dns_name="$3"
    shift 3

    p6_run_write_cmd aws devicefarm create-vpce-configuration --vpce-configuration-name $vpce_configuration_name --vpce-service-name $vpce_service_name --service-dns-name $service_dns_name "$@"
}
