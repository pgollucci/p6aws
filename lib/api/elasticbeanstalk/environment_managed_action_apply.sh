p6_aws_elasticbeanstalk_environment_managed_action_apply() {
    local action_id="$1"
    shift 1

    p6_log_or_run aws elasticbeanstalk apply-environment-managed-action --action-id $action_id "$@"
}
