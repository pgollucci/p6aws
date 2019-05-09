p6_aws_elbv2_target_group_attributes_modify() {
    local target_group_arn="$1"
    local attributes="$2"
    shift 2

    p6_log_and_run aws elbv2 modify-target-group-attributes --target-group-arn $target_group_arn --attributes $attributes "$@"
}
