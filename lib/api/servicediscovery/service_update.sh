p6_aws_servicediscovery_service_update() {
    local id="$1"
    local service="$2"
    shift 2

    p6_run_write_cmd aws servicediscovery update-service --id $id --service $service "$@"
}
