p6_aws_iam_users_list() {

    p6_run_read_cmd aws iam list-users "$@"
}
