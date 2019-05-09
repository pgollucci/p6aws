p6_aws_servicediscovery_instance_get() {
    local service_id="$1"
    local instance_id="$2"
    shift 2

    p6_log_and_run aws servicediscovery get-instance --service-id $service_id --instance-id $instance_id "$@"
}
