p6_aws_stepfunctions_activity_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws stepfunctions create-activity --name $name "$@"
}
