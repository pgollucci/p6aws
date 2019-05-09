p6_aws_lambda_layer_version_get() {
    local layer_name="$1"
    local version_number="$2"
    shift 2

    p6_log_and_run aws lambda get-layer-version --layer-name $layer_name --version-number $version_number "$@"
}
