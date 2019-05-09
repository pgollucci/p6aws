p6_aws_iot_role_alias_create() {
    local role_alias="$1"
    local role_arn="$2"
    shift 2

    p6_log_or_run aws iot create-role-alias --role-alias $role_alias --role-arn $role_arn "$@"
}
