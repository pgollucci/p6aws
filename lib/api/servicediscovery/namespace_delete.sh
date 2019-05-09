p6_aws_servicediscovery_namespace_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws servicediscovery delete-namespace --id $id "$@"
}
