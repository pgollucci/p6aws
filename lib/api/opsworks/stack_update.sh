p6_aws_opsworks_stack_update() {
    local stack_id="$1"
    shift 1

    p6_log_or_run aws opsworks update-stack --stack-id $stack_id "$@"
}
