p6_aws_iot_role_alias_update() {
    local role_alias="$1"
    shift 1

    p6_log_or_run aws iot update-role-alias --role-alias $role_alias "$@"
}
