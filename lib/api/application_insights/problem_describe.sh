######################################################################
#<
#
# Function:
#      = p6_aws_application_insights_problem_describe(problem_id)
#
# Arg(s):
#    problem_id - 
#
#
#>
######################################################################
p6_aws_application_insights_problem_describe() {
    local problem_id="$1"
    shift 1

    p6_run_read_cmd aws application-insights describe-problem --problem-id $problem_id "$@"
}