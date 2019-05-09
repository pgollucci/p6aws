p6_aws_servicediscovery_service_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws servicediscovery delete-service --id $id "$@"
}
