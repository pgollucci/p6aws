p6_aws_servicediscovery_service_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws servicediscovery create-service --name $name "$@"
}
