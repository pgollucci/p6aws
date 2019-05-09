p6_aws_codecommit_branches_list() {
    local repository_name="$1"
    shift 1

    p6_run_read_cmd aws codecommit list-branches --repository-name $repository_name "$@"
}
