p6_aws_opsworks_stack_delete() {
    local stack_id="$1"
    shift 1

    p6_log_or_run aws opsworks delete-stack --stack-id $stack_id "$@"
}
