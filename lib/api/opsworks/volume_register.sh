p6_aws_opsworks_volume_register() {
    local stack_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks register-volume --stack-id $stack_id "$@"
}
