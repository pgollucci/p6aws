p6_aws_sagemaker_endpoint_create() {
    local endpoint_name="$1"
    local endpoint_config_name="$2"
    shift 2

    p6_run_write_cmd aws sagemaker create-endpoint --endpoint-name $endpoint_name --endpoint-config-name $endpoint_config_name "$@"
}
