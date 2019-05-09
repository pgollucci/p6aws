p6_aws_iot_role_alias_delete() {
    local role_alias="$1"
    shift 1

    p6_log_or_run aws iot delete-role-alias --role-alias $role_alias "$@"
}
