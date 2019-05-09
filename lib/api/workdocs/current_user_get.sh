p6_aws_workdocs_current_user_get() {
    local authentication_token="$1"
    shift 1

    p6_log_and_run aws workdocs get-current-user --authentication-token $authentication_token "$@"
}
