p6_aws_service_quotas_service_quotas_list() {
    local service_code="$1"
    shift 1

    p6_run_read_cmd aws service-quotas list-service-quotas --service-code $service_code "$@"
}
