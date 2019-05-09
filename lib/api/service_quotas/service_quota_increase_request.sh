p6_aws_service_quotas_service_quota_increase_request() {
    local service_code="$1"
    local quota_code="$2"
    local desired_value="$3"
    shift 3

    p6_run_write_cmd aws service-quotas request-service-quota-increase --service-code $service_code --quota-code $quota_code --desired-value $desired_value "$@"
}
