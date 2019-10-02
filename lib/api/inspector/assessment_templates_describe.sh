######################################################################
#<
#
# Function:
#	p6_aws_inspector_assessment_templates_describe(assessment_template_arns)
#
#  Args:
#	assessment_template_arns - 
#
#>
######################################################################
p6_aws_inspector_assessment_templates_describe() {
    local assessment_template_arns="$1"
    shift 1

    p6_run_read_cmd aws inspector describe-assessment-templates --assessment-template-arns $assessment_template_arns "$@"
}