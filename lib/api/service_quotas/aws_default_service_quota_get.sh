p6_aws_service_quotas_aws_default_service_quota_get() {
    local service_code="$1"
    local quota_code="$2"
    shift 2

    p6_run_read_cmd aws service-quotas get-aws-default-service-quota --service-code $service_code --quota-code $quota_code "$@"
}
