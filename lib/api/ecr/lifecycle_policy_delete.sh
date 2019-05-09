p6_aws_ecr_lifecycle_policy_delete() {
    local repository_name="$1"
    shift 1

    p6_run_write_cmd aws ecr delete-lifecycle-policy --repository-name $repository_name "$@"
}
