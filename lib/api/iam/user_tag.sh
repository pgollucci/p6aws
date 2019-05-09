p6_aws_iam_user_tag() {
    local user_name="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws iam tag-user --user-name $user_name --tags $tags "$@"
}
