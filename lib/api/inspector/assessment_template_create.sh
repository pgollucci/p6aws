######################################################################
#<
#
# Function:
#      = p6_aws_inspector_assessment_template_create(assessment_target_arn, assessment_template_name, duration_in_seconds, rules_package_arns)
#
# Arg(s):
#    assessment_target_arn - 
#    assessment_template_name - 
#    duration_in_seconds - 
#    rules_package_arns - 
#
#
#>
######################################################################
p6_aws_inspector_assessment_template_create() {
    local assessment_target_arn="$1"
    local assessment_template_name="$2"
    local duration_in_seconds="$3"
    local rules_package_arns="$4"
    shift 4

    p6_run_write_cmd aws inspector create-assessment-template --assessment-target-arn $assessment_target_arn --assessment-template-name $assessment_template_name --duration-in-seconds $duration_in_seconds --rules-package-arns $rules_package_arns "$@"
}