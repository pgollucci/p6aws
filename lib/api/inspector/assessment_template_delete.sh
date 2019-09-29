######################################################################
#<
#
# Function:
#      = p6_aws_inspector_assessment_template_delete(assessment_template_arn)
#
# Arg(s):
#    assessment_template_arn - 
#
#
#>
######################################################################
p6_aws_inspector_assessment_template_delete() {
    local assessment_template_arn="$1"
    shift 1

    p6_run_write_cmd aws inspector delete-assessment-template --assessment-template-arn $assessment_template_arn "$@"
}