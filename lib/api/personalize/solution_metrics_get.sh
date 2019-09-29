######################################################################
#<
#
# Function:
#      = p6_aws_personalize_solution_metrics_get(solution_version_arn)
#
# Arg(s):
#    solution_version_arn - 
#
#
#>
######################################################################
p6_aws_personalize_solution_metrics_get() {
    local solution_version_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize get-solution-metrics --solution-version-arn $solution_version_arn "$@"
}