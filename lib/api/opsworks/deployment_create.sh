p6_aws_opsworks_deployment_create() {
    local stack_id="$1"
    local command="$2"
    shift 2

    p6_log_or_run aws opsworks create-deployment --stack-id $stack_id --command $command "$@"
}
