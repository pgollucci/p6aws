p6_aws_lambda_layer_version_publish() {
    local layer_name="$1"
    shift 1

    p6_run_write_cmd aws lambda publish-layer-version --layer-name $layer_name "$@"
}
