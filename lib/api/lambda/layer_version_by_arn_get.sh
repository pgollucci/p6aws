p6_aws_lambda_layer_version_by_arn_get() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws lambda get-layer-version-by-arn --arn $arn "$@"
}
