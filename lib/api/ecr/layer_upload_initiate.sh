p6_aws_ecr_layer_upload_initiate() {
    local repository_name="$1"
    shift 1

    p6_run_write_cmd aws ecr initiate-layer-upload --repository-name $repository_name "$@"
}
