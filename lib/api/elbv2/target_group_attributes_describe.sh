p6_aws_elbv2_target_group_attributes_describe() {
    local target_group_arn="$1"
    shift 1

    p6_run_read_cmd aws elbv2 describe-target-group-attributes --target-group-arn $target_group_arn "$@"
}
