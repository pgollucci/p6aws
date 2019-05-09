p6_aws_appstream_user_disable() {
    local user_name="$1"
    local authentication_type="$2"
    shift 2

    p6_run_write_cmd aws appstream disable-user --user-name $user_name --authentication-type $authentication_type "$@"
}
