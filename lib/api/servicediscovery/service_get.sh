p6_aws_servicediscovery_service_get() {
    local id="$1"
    shift 1

    p6_log_and_run aws servicediscovery get-service --id $id "$@"
}
