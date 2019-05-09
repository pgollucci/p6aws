p6_aws_servicediscovery_instances_discover() {
    local namespace_name="$1"
    local service_name="$2"
    shift 2

    p6_log_or_run aws servicediscovery discover-instances --namespace-name $namespace_name --service-name $service_name "$@"
}
