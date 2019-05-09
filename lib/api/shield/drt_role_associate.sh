p6_aws_shield_drt_role_associate() {
    local role_arn="$1"
    shift 1

    p6_log_or_run aws shield associate-drt-role --role-arn $role_arn "$@"
}
