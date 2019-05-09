p6_aws_codecommit_pull_request_by_squash_merge() {
    local pull_request_id="$1"
    local repository_name="$2"
    shift 2

    p6_run_write_cmd aws codecommit merge-pull-request-by-squash --pull-request-id $pull_request_id --repository-name $repository_name "$@"
}
