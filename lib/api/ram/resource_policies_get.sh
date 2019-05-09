p6_aws_ram_resource_policies_get() {
    local resource_arns="$1"
    shift 1

    p6_log_and_run aws ram get-resource-policies --resource-arns $resource_arns "$@"
}
