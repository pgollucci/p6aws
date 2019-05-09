p6_aws_codebuild_source_credentials_list() {

    p6_run_read_cmd aws codebuild list-source-credentials "$@"
}
