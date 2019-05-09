p6_aws_lambda_layer_versions_list() {
    local layer_name="$1"
    shift 1

    p6_run_read_cmd aws lambda list-layer-versions --layer-name $layer_name "$@"
}
