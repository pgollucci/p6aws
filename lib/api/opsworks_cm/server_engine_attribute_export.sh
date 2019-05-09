p6_aws_opsworks_cm_server_engine_attribute_export() {
    local export_attribute_name="$1"
    local server_name="$2"
    shift 2

    p6_log_or_run aws opsworks-cm export-server-engine-attribute --export-attribute-name $export_attribute_name --server-name $server_name "$@"
}
