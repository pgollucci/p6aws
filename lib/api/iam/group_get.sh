p6_aws_iam_group_get() {
    local group_name="$1"
    shift 1

    p6_log_and_run aws iam get-group --group-name $group_name "$@"
}
