######################################################################
#<
#
# Function:
#	p6_aws_inspector_exclusions_list(assessment_run_arn)
#
#  Args:
#	assessment_run_arn - 
#
#>
######################################################################
p6_aws_inspector_exclusions_list() {
    local assessment_run_arn="$1"
    shift 1

    p6_run_read_cmd aws inspector list-exclusions --assessment-run-arn $assessment_run_arn "$@"
}