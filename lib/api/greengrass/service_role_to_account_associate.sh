p6_aws_greengrass_service_role_to_account_associate() {
    local role_arn="$1"
    shift 1

    p6_run_write_cmd aws greengrass associate-service-role-to-account --role-arn $role_arn "$@"
}
