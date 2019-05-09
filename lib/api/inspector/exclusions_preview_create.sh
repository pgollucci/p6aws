p6_aws_inspector_exclusions_preview_create() {
    local assessment_template_arn="$1"
    shift 1

    p6_log_or_run aws inspector create-exclusions-preview --assessment-template-arn $assessment_template_arn "$@"
}
