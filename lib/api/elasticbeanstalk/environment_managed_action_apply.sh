p6_aws_elasticbeanstalk_environment_managed_action_apply() {
    local action_id="$1"
    shift 1

    p6_run_write_cmd aws elasticbeanstalk apply-environment-managed-action --action-id $action_id "$@"
}
