p6_aws_ecr_image_put() {
    local repository_name="$1"
    local image_manifest="$2"
    shift 2

    p6_log_or_run aws ecr put-image --repository-name $repository_name --image-manifest $image_manifest "$@"
}
