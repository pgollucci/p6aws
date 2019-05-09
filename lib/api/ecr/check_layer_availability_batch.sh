p6_aws_ecr_check_layer_availability_batch() {
    local repository_name="$1"
    local layer_digests="$2"
    shift 2

    p6_run_write_cmd aws ecr batch-check-layer-availability --repository-name $repository_name --layer-digests $layer_digests "$@"
}
