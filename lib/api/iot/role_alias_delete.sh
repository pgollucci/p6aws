p6_aws_iot_role_alias_delete() {
    local role_alias="$1"
    shift 1

    p6_run_write_cmd aws iot delete-role-alias --role-alias $role_alias "$@"
}
