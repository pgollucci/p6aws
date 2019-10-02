######################################################################
#<
#
# Function:
#	p6_aws_elbv2_target_group_modify(target_group_arn)
#
#  Args:
#	target_group_arn - 
#
#>
######################################################################
p6_aws_elbv2_target_group_modify() {
    local target_group_arn="$1"
    shift 1

    p6_run_read_cmd aws elbv2 modify-target-group --target-group-arn $target_group_arn "$@"
}