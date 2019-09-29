######################################################################
#<
#
# Function:
#      = p6_aws_inspector_assessment_target_delete(assessment_target_arn)
#
# Arg(s):
#    assessment_target_arn - 
#
#
#>
######################################################################
p6_aws_inspector_assessment_target_delete() {
    local assessment_target_arn="$1"
    shift 1

    p6_run_read_cmd aws inspector delete-assessment-target --assessment-target-arn $assessment_target_arn "$@"
}