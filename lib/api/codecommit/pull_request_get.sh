p6_aws_codecommit_pull_request_get() {
    local pull_request_id="$1"
    shift 1

    p6_run_read_cmd aws codecommit get-pull-request --pull-request-id $pull_request_id "$@"
}
