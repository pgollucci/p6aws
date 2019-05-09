p6_aws_workdocs_root_folders_describe() {
    local authentication_token="$1"
    shift 1

    p6_log_and_run aws workdocs describe-root-folders --authentication-token $authentication_token "$@"
}
