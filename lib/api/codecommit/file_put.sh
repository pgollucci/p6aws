p6_aws_codecommit_file_put() {
    local repository_name="$1"
    local branch_name="$2"
    local file_content="$3"
    local file_path="$4"
    shift 4

    p6_run_write_cmd aws codecommit put-file --repository-name $repository_name --branch-name $branch_name --file-content $file_content --file-path $file_path "$@"
}
