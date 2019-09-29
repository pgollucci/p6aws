######################################################################
#<
#
# Function:
#      = p6_aws_elbv2_targets_deregister(target_group_arn, targets)
#
# Arg(s):
#    target_group_arn - 
#    targets - 
#
#
#>
######################################################################
p6_aws_elbv2_targets_deregister() {
    local target_group_arn="$1"
    local targets="$2"
    shift 2

    p6_run_read_cmd aws elbv2 deregister-targets --target-group-arn $target_group_arn --targets $targets "$@"
}