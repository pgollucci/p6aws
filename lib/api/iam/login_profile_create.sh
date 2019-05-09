p6_aws_iam_login_profile_create() {
    local user_name="$1"
    local password="$2"
    shift 2

    p6_run_write_cmd aws iam create-login-profile --user-name $user_name --password $password "$@"
}
