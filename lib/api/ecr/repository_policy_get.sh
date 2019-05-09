p6_aws_ecr_repository_policy_get() {
    local repository_name="$1"
    shift 1

    p6_run_read_cmd aws ecr get-repository-policy --repository-name $repository_name "$@"
}
