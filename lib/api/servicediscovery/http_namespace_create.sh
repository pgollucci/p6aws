p6_aws_servicediscovery_http_namespace_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws servicediscovery create-http-namespace --name $name "$@"
}
