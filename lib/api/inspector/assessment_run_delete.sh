p6_aws_inspector_assessment_run_delete() {
    local assessment_run_arn="$1"
    shift 1

    p6_log_or_run aws inspector delete-assessment-run --assessment-run-arn $assessment_run_arn "$@"
}
