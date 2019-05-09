p6_aws_servicediscovery_instances_health_status_get() {
    local service_id="$1"
    shift 1

    p6_log_and_run aws servicediscovery get-instances-health-status --service-id $service_id "$@"
}
