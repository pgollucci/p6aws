p6_aws_cloudformation_stack_policy_get() {
    local stack_name="$1"
    shift 1

    p6_run_read_cmd aws cloudformation get-stack-policy --stack-name $stack_name "$@"
}
