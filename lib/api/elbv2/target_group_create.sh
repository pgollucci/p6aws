p6_aws_elbv2_target_group_create() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws elbv2 create-target-group --name $name "$@"
}
