p6_aws_workdocs_user_deactivate() {
    local user_id="$1"
    shift 1

    p6_log_or_run aws workdocs deactivate-user --user-id $user_id "$@"
}
