######################################################################
#<
#
# Function:
#      = p6_aws_inspector_assessment_run_agents_list(assessment_run_arn)
#
# Arg(s):
#    assessment_run_arn - 
#
#
#>
######################################################################
p6_aws_inspector_assessment_run_agents_list() {
    local assessment_run_arn="$1"
    shift 1

    p6_run_read_cmd aws inspector list-assessment-run-agents --assessment-run-arn $assessment_run_arn "$@"
}