p6_aws_ecr_repository_create() {
    local repository_name="$1"
    shift 1

    p6_log_or_run aws ecr create-repository --repository-name $repository_name "$@"
}
