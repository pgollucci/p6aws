p6_aws_ecs_account_setting_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws ecs delete-account-setting --name $name "$@"
}
