p6_aws_stepfunctions_activity_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws stepfunctions create-activity --name $name "$@"
}
