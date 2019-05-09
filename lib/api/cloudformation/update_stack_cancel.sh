p6_aws_cloudformation_update_stack_cancel() {
    local stack_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation cancel-update-stack --stack-name $stack_name "$@"
}
