p6_aws_workdocs_user_delete() {
    local user_id="$1"
    shift 1

    p6_log_or_run aws workdocs delete-user --user-id $user_id "$@"
}
