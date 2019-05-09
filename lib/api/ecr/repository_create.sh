p6_aws_ecr_repository_create() {
    local repository_name="$1"
    shift 1

    p6_run_write_cmd aws ecr create-repository --repository-name $repository_name "$@"
}
