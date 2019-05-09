p6_aws_ecs_attributes_list() {
    local target_type="$1"
    shift 1

    p6_run_read_cmd aws ecs list-attributes --target-type $target_type "$@"
}
