p6_aws_iam_groups_list() {

    p6_run_read_cmd aws iam list-groups "$@"
}
