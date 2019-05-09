p6_aws_sagemaker_endpoint_config_create() {
    local endpoint_config_name="$1"
    local production_variants="$2"
    shift 2

    p6_run_write_cmd aws sagemaker create-endpoint-config --endpoint-config-name $endpoint_config_name --production-variants $production_variants "$@"
}
