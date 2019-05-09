p6_aws_lambda_layer_version_publish() {
    local layer_name="$1"
    shift 1

    p6_log_or_run aws lambda publish-layer-version --layer-name $layer_name "$@"
}
