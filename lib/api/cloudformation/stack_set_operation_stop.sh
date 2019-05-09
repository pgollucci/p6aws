p6_aws_cloudformation_stack_set_operation_stop() {
    local stack_set_name="$1"
    local operation_id="$2"
    shift 2

    p6_run_write_cmd aws cloudformation stop-stack-set-operation --stack-set-name $stack_set_name --operation-id $operation_id "$@"
}
