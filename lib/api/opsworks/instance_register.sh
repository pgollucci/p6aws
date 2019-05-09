p6_aws_opsworks_instance_register() {
    local stack_id="$1"
    shift 1

    p6_log_or_run aws opsworks register-instance --stack-id $stack_id "$@"
}
