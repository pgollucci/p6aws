p6_aws_codebuild_source_credentials_delete() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws codebuild delete-source-credentials --arn $arn "$@"
}
