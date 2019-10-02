######################################################################
#<
#
# Function:
#	p6_aws_inspector_assessment_runs_describe(assessment_run_arns)
#
#  Args:
#	assessment_run_arns - 
#
#>
######################################################################
p6_aws_inspector_assessment_runs_describe() {
    local assessment_run_arns="$1"
    shift 1

    p6_run_read_cmd aws inspector describe-assessment-runs --assessment-run-arns $assessment_run_arns "$@"
}