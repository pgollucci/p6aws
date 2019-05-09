p6_aws_servicediscovery_instance_register() {
    local service_id="$1"
    local instance_id="$2"
    local attributes="$3"
    shift 3

    p6_log_or_run aws servicediscovery register-instance --service-id $service_id --instance-id $instance_id --attributes $attributes "$@"
}
