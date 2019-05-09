p6_aws_codecommit_repository_delete() {
    local repository_name="$1"
    shift 1

    p6_run_write_cmd aws codecommit delete-repository --repository-name $repository_name "$@"
}
