p6_aws_configservice_get_resource_config_batch() {
    local resource_keys="$1"
    shift 1

    p6_run_read_cmd aws configservice batch-get-resource-config --resource-keys $resource_keys "$@"
}
