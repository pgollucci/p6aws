p6_aws_iam_roles_list() {

    p6_run_read_cmd aws iam list-roles "$@"
}
