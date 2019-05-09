p6_aws_iot_role_alias_describe() {
    local role_alias="$1"
    shift 1

    p6_log_and_run aws iot describe-role-alias --role-alias $role_alias "$@"
}
