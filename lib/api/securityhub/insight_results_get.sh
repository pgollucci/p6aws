######################################################################
#<
#
# Function:
#	p6_aws_securityhub_insight_results_get(insight_arn)
#
#  Args:
#	insight_arn - 
#
#>
######################################################################
p6_aws_securityhub_insight_results_get() {
    local insight_arn="$1"
    shift 1

    p6_run_read_cmd aws securityhub get-insight-results --insight-arn $insight_arn "$@"
}