p6_aws_opsworks_stack_provisioning_parameters_describe() {
    local stack_id="$1"
    shift 1

    p6_log_and_run aws opsworks describe-stack-provisioning-parameters --stack-id $stack_id "$@"
}
