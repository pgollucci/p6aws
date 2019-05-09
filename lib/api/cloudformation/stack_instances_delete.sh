p6_aws_cloudformation_stack_instances_delete() {
    local stack_set_name="$1"
    local accounts="$2"
    local regions="$3"
    local retain_stacks="$4"
    shift 4

    p6_run_write_cmd aws cloudformation delete-stack-instances --stack-set-name $stack_set_name --accounts $accounts --regions $regions --retain-stacks $retain_stacks "$@"
}
