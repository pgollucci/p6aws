p6_aws_inspector_assessment_template_delete() {
    local assessment_template_arn="$1"
    shift 1

    p6_log_or_run aws inspector delete-assessment-template --assessment-template-arn $assessment_template_arn "$@"
}
