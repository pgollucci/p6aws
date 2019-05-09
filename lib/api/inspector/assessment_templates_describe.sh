p6_aws_inspector_assessment_templates_describe() {
    local assessment_template_arns="$1"
    shift 1

    p6_log_and_run aws inspector describe-assessment-templates --assessment-template-arns $assessment_template_arns "$@"
}
