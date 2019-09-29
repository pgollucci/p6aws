######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_insight_delete(insight_arn)
#
# Arg(s):
#    insight_arn - 
#
#
#>
######################################################################
p6_aws_securityhub_insight_delete() {
    local insight_arn="$1"
    shift 1

    p6_run_write_cmd aws securityhub delete-insight --insight-arn $insight_arn "$@"
}