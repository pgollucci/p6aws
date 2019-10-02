######################################################################
#<
#
# Function:
#	p6_aws_opsworks_user_profile_create(iam_user_arn)
#
#  Args:
#	iam_user_arn - 
#
#>
######################################################################
p6_aws_opsworks_user_profile_create() {
    local iam_user_arn="$1"
    shift 1

    p6_run_write_cmd aws opsworks create-user-profile --iam-user-arn $iam_user_arn "$@"
}