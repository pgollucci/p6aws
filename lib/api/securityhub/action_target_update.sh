p6_aws_securityhub_action_target_update() {
    local action_target_arn="$1"
    shift 1

    p6_run_read_cmd aws securityhub update-action-target --action-target-arn $action_target_arn "$@"
}
