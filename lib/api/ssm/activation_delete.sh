p6_aws_ssm_activation_delete() {
    local activation_id="$1"
    shift 1

    p6_log_or_run aws ssm delete-activation --activation-id $activation_id "$@"
}
