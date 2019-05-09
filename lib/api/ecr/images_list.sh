p6_aws_ecr_images_list() {
    local repository_name="$1"
    shift 1

    p6_run_read_cmd aws ecr list-images --repository-name $repository_name "$@"
}
