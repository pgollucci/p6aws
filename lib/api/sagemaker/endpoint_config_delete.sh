p6_aws_sagemaker_endpoint_config_delete() {
    local endpoint_config_name="$1"
    shift 1

    p6_log_or_run aws sagemaker delete-endpoint-config --endpoint-config-name $endpoint_config_name "$@"
}
