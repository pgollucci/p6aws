p6_aws_workdocs_user_activate() {
    local user_id="$1"
    shift 1

    p6_log_or_run aws workdocs activate-user --user-id $user_id "$@"
}
