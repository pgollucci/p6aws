######################################################################
#<
#
# Function:
#      = p6_aws_stepfunctions_activity_describe(activity_arn)
#
# Arg(s):
#    activity_arn - 
#
#
#>
######################################################################
p6_aws_stepfunctions_activity_describe() {
    local activity_arn="$1"
    shift 1

    p6_run_read_cmd aws stepfunctions describe-activity --activity-arn $activity_arn "$@"
}