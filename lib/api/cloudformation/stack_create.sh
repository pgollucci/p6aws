p6_aws_cloudformation_stack_create() {
    local stack_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation create-stack --stack-name $stack_name "$@"
}
