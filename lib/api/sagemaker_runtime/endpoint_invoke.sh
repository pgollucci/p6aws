p6_aws_sagemaker_runtime_endpoint_invoke() {
    local endpoint_name="$1"
    local body="$2"
    shift 2

    p6_run_write_cmd aws sagemaker-runtime invoke-endpoint --endpoint-name $endpoint_name --body $body "$@"
}
