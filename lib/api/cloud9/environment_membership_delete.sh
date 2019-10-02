######################################################################
#<
#
# Function:
#	p6_aws_cloud9_environment_membership_delete(environment_id, user_arn)
#
#  Args:
#	environment_id - 
#	user_arn - 
#
#>
######################################################################
p6_aws_cloud9_environment_membership_delete() {
    local environment_id="$1"
    local user_arn="$2"
    shift 2

    p6_run_write_cmd aws cloud9 delete-environment-membership --environment-id $environment_id --user-arn $user_arn "$@"
}