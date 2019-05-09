p6_aws_organizations_aws_service_access_enable() {
    local service_principal="$1"
    shift 1

    p6_log_or_run aws organizations enable-aws-service-access --service-principal $service_principal "$@"
}
