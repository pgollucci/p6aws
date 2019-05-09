p6_aws_sagemaker_endpoint_describe() {
    local endpoint_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-endpoint --endpoint-name $endpoint_name "$@"
}
