p6_aws_elbv2_target_group_delete() {
    local target_group_arn="$1"
    shift 1

    p6_run_read_cmd aws elbv2 delete-target-group --target-group-arn $target_group_arn "$@"
}
