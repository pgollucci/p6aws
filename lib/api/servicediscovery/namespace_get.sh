p6_aws_servicediscovery_namespace_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws servicediscovery get-namespace --id $id "$@"
}
