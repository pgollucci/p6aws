p6_aws_inspector_attributes_from_findings_remove() {
    local finding_arns="$1"
    local attribute_keys="$2"
    shift 2

    p6_run_write_cmd aws inspector remove-attributes-from-findings --finding-arns $finding_arns --attribute-keys $attribute_keys "$@"
}
