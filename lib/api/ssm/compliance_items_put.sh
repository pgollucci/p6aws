p6_aws_ssm_compliance_items_put() {
    local resource_id="$1"
    local resource_type="$2"
    local compliance_type="$3"
    local execution_summary="$4"
    local items="$5"
    shift 5

    p6_run_write_cmd aws ssm put-compliance-items --resource-id $resource_id --resource-type $resource_type --compliance-type $compliance_type --execution-summary $execution_summary --items $items "$@"
}
