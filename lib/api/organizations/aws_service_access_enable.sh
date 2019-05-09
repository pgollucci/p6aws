p6_aws_organizations_aws_service_access_enable() {
    local service_principal="$1"
    shift 1

    p6_run_write_cmd aws organizations enable-aws-service-access --service-principal $service_principal "$@"
}
