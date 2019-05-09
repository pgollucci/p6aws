p6_aws_servicediscovery_service_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicediscovery delete-service --id $id "$@"
}
