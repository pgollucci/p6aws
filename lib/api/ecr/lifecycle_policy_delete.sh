p6_aws_ecr_lifecycle_policy_delete() {
    local repository_name="$1"
    shift 1

    p6_log_or_run aws ecr delete-lifecycle-policy --repository-name $repository_name "$@"
}
