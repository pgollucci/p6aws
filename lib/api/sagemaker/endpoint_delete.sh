p6_aws_sagemaker_endpoint_delete() {
    local endpoint_name="$1"
    shift 1

    p6_log_or_run aws sagemaker delete-endpoint --endpoint-name $endpoint_name "$@"
}
