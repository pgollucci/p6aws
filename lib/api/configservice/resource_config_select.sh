p6_aws_configservice_resource_config_select() {
    local expression="$1"
    shift 1

    p6_run_write_cmd aws configservice select-resource-config --expression $expression "$@"
}
