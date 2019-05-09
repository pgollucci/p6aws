p6_aws_cloudformation_stack_set_operation_results_list() {
    local stack_set_name="$1"
    local operation_id="$2"
    shift 2

    p6_run_read_cmd aws cloudformation list-stack-set-operation-results --stack-set-name $stack_set_name --operation-id $operation_id "$@"
}
