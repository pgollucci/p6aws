p6_aws_ecr_repository_delete() {
    local repository_name="$1"
    shift 1

    p6_log_or_run aws ecr delete-repository --repository-name $repository_name "$@"
}
