p6_aws_iot_mitigation_action_create() {
    local action_name="$1"
    local role_arn="$2"
    local action_params="$3"
    shift 3

    p6_run_write_cmd aws iot create-mitigation-action --action-name $action_name --role-arn $role_arn --action-params $action_params "$@"
}
