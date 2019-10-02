######################################################################
#<
#
# Function:
#	p6_aws_inspector_assessment_run_start(assessment_template_arn)
#
#  Args:
#	assessment_template_arn - 
#
#>
######################################################################
p6_aws_inspector_assessment_run_start() {
    local assessment_template_arn="$1"
    shift 1

    p6_run_write_cmd aws inspector start-assessment-run --assessment-template-arn $assessment_template_arn "$@"
}