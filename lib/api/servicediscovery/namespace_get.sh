p6_aws_servicediscovery_namespace_get() {
    local id="$1"
    shift 1

    p6_log_and_run aws servicediscovery get-namespace --id $id "$@"
}
