p6_aws_opsworks_stack_summary_describe() {
    local stack_id="$1"
    shift 1

    p6_run_read_cmd aws opsworks describe-stack-summary --stack-id $stack_id "$@"
}
