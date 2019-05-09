p6_aws_license_manager_license_specifications_for_resource_update() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws license-manager update-license-specifications-for-resource --resource-arn $resource_arn "$@"
}
