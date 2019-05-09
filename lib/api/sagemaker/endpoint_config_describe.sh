p6_aws_sagemaker_endpoint_config_describe() {
    local endpoint_config_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-endpoint-config --endpoint-config-name $endpoint_config_name "$@"
}
