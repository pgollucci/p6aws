p6_aws_ecr_images_describe() {
    local repository_name="$1"
    shift 1

    p6_log_and_run aws ecr describe-images --repository-name $repository_name "$@"
}
