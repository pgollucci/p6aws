p6_aws_stepfunctions_state_machine_create() {
    local name="$1"
    local definition="$2"
    local role_arn="$3"
    shift 3

    p6_run_write_cmd aws stepfunctions create-state-machine --name $name --definition $definition --role-arn $role_arn "$@"
}
