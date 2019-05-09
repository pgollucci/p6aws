p6_aws_iam_password_change() {
    local old_password="$1"
    local new_password="$2"
    shift 2

    p6_run_write_cmd aws iam change-password --old-password $old_password --new-password $new_password "$@"
}
