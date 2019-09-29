######################################################################
#<
#
# Function:
#      = p6_aws_elbv2_target_health_describe(target_group_arn)
#
# Arg(s):
#    target_group_arn - 
#
#
#>
######################################################################
p6_aws_elbv2_target_health_describe() {
    local target_group_arn="$1"
    shift 1

    p6_run_read_cmd aws elbv2 describe-target-health --target-group-arn $target_group_arn "$@"
}