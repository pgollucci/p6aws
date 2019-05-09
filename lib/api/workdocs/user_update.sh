p6_aws_workdocs_user_update() {
    local user_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs update-user --user-id $user_id "$@"
}
