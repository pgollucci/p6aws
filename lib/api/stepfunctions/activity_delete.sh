p6_aws_stepfunctions_activity_delete() {
    local activity_arn="$1"
    shift 1

    p6_run_write_cmd aws stepfunctions delete-activity --activity-arn $activity_arn "$@"
}
