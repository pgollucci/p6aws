p6_aws_organizations_aws_service_access_disable() {
    local service_principal="$1"
    shift 1

    p6_run_write_cmd aws organizations disable-aws-service-access --service-principal $service_principal "$@"
}
