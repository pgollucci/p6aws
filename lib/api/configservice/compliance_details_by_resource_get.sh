p6_aws_configservice_compliance_details_by_resource_get() {
    local resource_type="$1"
    local resource_id="$2"
    shift 2

    p6_run_read_cmd aws configservice get-compliance-details-by-resource --resource-type $resource_type --resource-id $resource_id "$@"
}
