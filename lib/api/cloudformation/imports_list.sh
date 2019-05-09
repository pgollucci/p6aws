p6_aws_cloudformation_imports_list() {
    local export_name="$1"
    shift 1

    p6_run_read_cmd aws cloudformation list-imports --export-name $export_name "$@"
}
