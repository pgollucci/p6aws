p6_aws_servicediscovery_service_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws servicediscovery get-service --id $id "$@"
}
