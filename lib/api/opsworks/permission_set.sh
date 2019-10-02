######################################################################
#<
#
# Function:
#	p6_aws_opsworks_permission_set(stack_id, iam_user_arn)
#
#  Args:
#	stack_id - 
#	iam_user_arn - 
#
#>
######################################################################
p6_aws_opsworks_permission_set() {
    local stack_id="$1"
    local iam_user_arn="$2"
    shift 2

    p6_run_write_cmd aws opsworks set-permission --stack-id $stack_id --iam-user-arn $iam_user_arn "$@"
}