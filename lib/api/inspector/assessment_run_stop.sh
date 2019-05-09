p6_aws_inspector_assessment_run_stop() {
    local assessment_run_arn="$1"
    shift 1

    p6_run_write_cmd aws inspector stop-assessment-run --assessment-run-arn $assessment_run_arn "$@"
}
