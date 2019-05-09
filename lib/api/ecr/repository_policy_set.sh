p6_aws_ecr_repository_policy_set() {
    local repository_name="$1"
    local policy_text="$2"
    shift 2

    p6_log_or_run aws ecr set-repository-policy --repository-name $repository_name --policy-text $policy_text "$@"
}
