p6_aws_cloudformation_stack_set_create() {
    local stack_set_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation create-stack-set --stack-set-name $stack_set_name "$@"
}
