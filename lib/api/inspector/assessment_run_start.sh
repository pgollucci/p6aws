p6_aws_inspector_assessment_run_start() {
    local assessment_template_arn="$1"
    shift 1

    p6_log_or_run aws inspector start-assessment-run --assessment-template-arn $assessment_template_arn "$@"
}
