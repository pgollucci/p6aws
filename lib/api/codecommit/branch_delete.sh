p6_aws_codecommit_branch_delete() {
    local repository_name="$1"
    local branch_name="$2"
    shift 2

    p6_run_write_cmd aws codecommit delete-branch --repository-name $repository_name --branch-name $branch_name "$@"
}
