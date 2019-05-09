p6_aws_inspector_exclusions_list() {
    local assessment_run_arn="$1"
    shift 1

    p6_log_and_run aws inspector list-exclusions --assessment-run-arn $assessment_run_arn "$@"
}
