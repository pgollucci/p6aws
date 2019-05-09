p6_aws_ecr_lifecycle_policy_get() {
    local repository_name="$1"
    shift 1

    p6_log_and_run aws ecr get-lifecycle-policy --repository-name $repository_name "$@"
}
